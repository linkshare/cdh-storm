# Copyright (c) 2015 Rakuten Marketing, LLC
# Licensed to Rakuten Marketing, LLC under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  Rakuten Marketing licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Author: Aiman Najjar <aiman.najjar@rakuten.com>

# Time marker for both stderr and stdout
# date 1>&2

function log {
  timestamp=$(date)
  echo "$timestamp: $1"       #stdout
  echo "$timestamp: $1" 1>&2; #stderr
}

ROLE=$1
CMD=$2

# Need to create a copy of STORM directory in the process work directory
log "Reinstalling fresh storm at /tmp/storm"
rm -rf /tmp/storm
mkdir /tmp/storm
cp -R $STORM_HOME/* /tmp/storm
cp -f $CONF_DIR/aux/storm.yaml /tmp/storm/conf/
chmod +x $CONF_DIR/scripts/nimbus_ui.sh
chmod +x $CONF_DIR/scripts/supervisor_logviewer.sh
chmod +x $CONF_DIR/scripts/generate_conf_file.sh

log "Generating Configuration files (storm.yaml and cluster.xml) in /tmp/storm/{conf,logback} "
$CONF_DIR/scripts/generate_conf_file.sh
echo "" >> /tmp/storm/conf/storm.yaml

log "Automatically detecting and appending ZooKeeper service configuration"
echo "storm.zookeeper.servers:" >> /tmp/storm/conf/storm.yaml
zkPort=2181

log "Detected ZooKeeper quorum $ZK_QUORUM" 
for ZK_HOST in $(echo $ZK_QUORUM | tr "," "\n")
do
    parsedZkHost=(${ZK_HOST//:/ })
    zkHost=${parsedZkHost[0]}
    zkPort=${parsedZkHost[1]}                       
    log "Found Zookeeper Host ${zkHost}:${zkPort}"
    echo "    - \"${zkHost}\"" >> /tmp/storm/conf/storm.yaml
done

if [ "$zkPort" = "" ]; then
    zkPort="2181"
fi

log "Using ZooKeeper port number $zkPort"
echo "storm.zookeeper.port: ${zkPort}" >> /tmp/storm/conf/storm.yaml


# Determine nimbus host 
nimbusPropertyLine=$(head -n 1 $CONF_DIR/nimbus_host.properties)
parsedNimbusProperty=(${nimbusPropertyLine//:/ })
log "Detected nimbus host: ${parsedNimbusProperty[0]}"
echo "nimbus.host: \"${parsedNimbusProperty[0]}\"" >> /tmp/storm/conf/storm.yaml

case $ROLE in
  (nimbus)
	if [ "$CMD" = "start" ]; then
    	log "Starting Storm Nimbus and UI"
    	exec $CONF_DIR/scripts/nimbus_ui.sh    	
    elif [ "$CMD" = "stop" ]; then
    	log "Stopping Storm Nimbus and UI"
    	pkill -u storm -f STORM_NIMBUS
    fi
    ;;    
  (supervisor)
	if [ "$CMD" = "start" ]; then
    	log "Starting Storm Supervisor and Logviewer"
    	exec $CONF_DIR/scripts/supervisor_logviewer.sh 	
    elif [ "$CMD" = "stop" ]; then
   
    	log "Stopping Storm Supervisor and Logviewer"
    	pkill -u storm -f STORM_SUPERVISOR
    fi
    ;;
  (admin)
    if [ "$CMD" = "stopAll" ]; then
    	log "Killing all storm processes"
		pkill -u storm    
    fi
    
  (*)
    log "Don't understand [$ROLE $CMD]"
    ;;

esac
