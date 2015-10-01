#!/bin/bash
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

echo "storm.local.dir: $STORM_LOCAL_DIR" >> /tmp/storm/conf/storm.yaml
echo "storm.zookeeper.root: $STORM_ZOOKEEPER_ROOT" >> /tmp/storm/conf/storm.yaml
echo "storm.zookeeper.session.timeout: $STORM_ZOOKEEPER_SESSION_TIMEOUT" >> /tmp/storm/conf/storm.yaml
echo "storm.zookeeper.connection.timeout: $STORM_ZOOKEEPER_CONNECTION_TIMEOUT" >> /tmp/storm/conf/storm.yaml
echo "storm.zookeeper.retry.times: $STORM_ZOOKEEPER_RETRY_TIMES" >> /tmp/storm/conf/storm.yaml
echo "storm.zookeeper.retry.interval: $STORM_ZOOKEEPER_RETRY_INTERVAL" >> /tmp/storm/conf/storm.yaml
echo "storm.zookeeper.retry.intervalceiling: $STORM_ZOOKEEPER_RETRY_INTERVALCEILING" >> /tmp/storm/conf/storm.yaml
echo "drpc.port: $DRPC_PORT" >> /tmp/storm/conf/storm.yaml
echo "drpc.worker.threads: $DRPC_WORKER_THREADS" >> /tmp/storm/conf/storm.yaml
echo "drpc.max.buffer.size: $DRPC_MAX_BUFFER_SIZE" >> /tmp/storm/conf/storm.yaml
echo "drpc.queue.size: $DRPC_QUEUE_SIZE" >> /tmp/storm/conf/storm.yaml
echo "drpc.invocations.port: $DRPC_INVOCATIONS_PORT" >> /tmp/storm/conf/storm.yaml
echo "drpc.invocations.threads: $DRPC_INVOCATIONS_THREADS" >> /tmp/storm/conf/storm.yaml
echo "drpc.request.timeout.secs: $DRPC_REQUEST_TIMEOUT_SECS" >> /tmp/storm/conf/storm.yaml
echo "drpc.childopts: $DRPC_CHILDOPTS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.thrift.port: $NIMBUS_THRIFT_PORT" >> /tmp/storm/conf/storm.yaml
echo "nimbus.thrift.threads: $NIMBUS_THRIFT_THREADS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.thrift.max.buffer.size: $NIMBUS_THRIFT_MAX_BUFFER_SIZE" >> /tmp/storm/conf/storm.yaml
echo "nimbus.childopts: $NIMBUS_CHILDOPTS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.task.timeout.secs: $NIMBUS_TASK_TIMEOUT_SECS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.supervisor.timeout.secs: $NIMBUS_SUPERVISOR_TIMEOUT_SECS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.monitor.freq.secs: $NIMBUS_MONITOR_FREQ_SECS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.cleanup.inbox.freq.secs: $NIMBUS_CLEANUP_INBOX_FREQ_SECS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.inbox.jar.expiration.secs: $NIMBUS_INBOX_JAR_EXPIRATION_SECS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.task.launch.secs: $NIMBUS_TASK_LAUNCH_SECS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.reassign: $NIMBUS_REASSIGN" >> /tmp/storm/conf/storm.yaml
echo "nimbus.file.copy.expiration.secs: $NIMBUS_FILE_COPY_EXPIRATION_SECS" >> /tmp/storm/conf/storm.yaml
echo "nimbus.credential.renewers.freq.secs: $NIMBUS_CREDENTIAL_RENEWERS_FREQ_SECS" >> /tmp/storm/conf/storm.yaml
echo "ui.port: $UI_PORT" >> /tmp/storm/conf/storm.yaml
echo "ui.childopts: $UI_CHILDOPTS" >> /tmp/storm/conf/storm.yaml
echo "ui.actions.enabled: $UI_ACTIONS_ENABLED" >> /tmp/storm/conf/storm.yaml
echo "ui.header.buffer.size: $UI_HEADER_BUFFER_SIZE" >> /tmp/storm/conf/storm.yaml
echo "logviewer.port: $LOGVIEWER_PORT" >> /tmp/storm/conf/storm.yaml
echo "logviewer.childopts: $LOGVIEWER_CHILDOPTS" >> /tmp/storm/conf/storm.yaml
echo "logviewer.cleanup.age: $LOGVIEWER_CLEANUP_AGE" >> /tmp/storm/conf/storm.yaml
echo "logviewer.appender.name: $LOGVIEWER_APPENDER_NAME" >> /tmp/storm/conf/storm.yaml
echo "supervisor.childopts: $SUPERVISOR_CHILDOPTS" >> /tmp/storm/conf/storm.yaml
echo "supervisor.run.worker.as.user: $SUPERVISOR_RUN_WORKER_AS_USER" >> /tmp/storm/conf/storm.yaml
echo "supervisor.worker.start.timeout.secs: $SUPERVISOR_WORKER_START_TIMEOUT_SECS" >> /tmp/storm/conf/storm.yaml
echo "supervisor.worker.timeout.secs: $SUPERVISOR_WORKER_TIMEOUT_SECS" >> /tmp/storm/conf/storm.yaml
echo "supervisor.monitor.frequency.secs: $SUPERVISOR_MONITOR_FREQUENCY_SECS" >> /tmp/storm/conf/storm.yaml
echo "supervisor.heartbeat.frequency.secs: $SUPERVISOR_HEARTBEAT_FREQUENCY_SECS" >> /tmp/storm/conf/storm.yaml
echo "supervisor.enable: $SUPERVISOR_ENABLE" >> /tmp/storm/conf/storm.yaml
echo "supervisor.slots.ports: [ $SUPERVISOR_SLOT_PORTS ] " >> /tmp/storm/conf/storm.yaml
echo "worker.childopts: $WORKER_CHILDOPTS" >> /tmp/storm/conf/storm.yaml
echo "worker.gc.childopts: $WORKER_GC_CHILDOPTS" >> /tmp/storm/conf/storm.yaml
echo "worker.heartbeat.frequency.secs: $WORKER_HEARTBEAT_FREQUENCY_SECS" >> /tmp/storm/conf/storm.yaml
echo "topology.worker.receiver.thread.count: $TOPOLOGY_WORKER_RECEIVER_THREAD_COUNT" >> /tmp/storm/conf/storm.yaml
echo "task.heartbeat.frequency.secs: $TASK_HEARTBEAT_FREQUENCY_SECS" >> /tmp/storm/conf/storm.yaml
echo "task.refresh.poll.secs: $TASK_REFRESH_POLL_SECS" >> /tmp/storm/conf/storm.yaml
echo "task.credentials.poll.secs: $TASK_CREDENTIALS_POLL_SECS" >> /tmp/storm/conf/storm.yaml
echo "storm.messaging.netty.buffer.size: $STORM_MESSAGING_NETTY_BUFFER_SIZE" >> /tmp/storm/conf/storm.yaml
echo "storm.messaging.netty.max.retries: $STORM_MESSAGING_NETTY_MAX_RETRIES" >> /tmp/storm/conf/storm.yaml
echo "storm.messaging.netty.max.wait: $STORM_MESSAGING_NETTY_MAX_WAIT" >> /tmp/storm/conf/storm.yaml
echo "storm.messaging.netty.min.wait: $STORM_MESSAGING_NETTY_MIN_WAIT" >> /tmp/storm/conf/storm.yaml
echo "storm.messaging.netty.transfer.batch.size: $STORM_MESSAGING_NETTY_TRANSFER_BATCH_SIZE" >> /tmp/storm/conf/storm.yaml
echo "storm.messaging.netty.flush.check.interval: $STORM_MESSAGING_NETTY_FLUSH_CHECK_INTERVAL" >> /tmp/storm/conf/storm.yaml
echo "storm.messaging.netty.authentication: $STORM_MESSAGING_NETTY_AUTHENTICATION" >> /tmp/storm/conf/storm.yaml
echo "storm.group.mapping.service.cache.duration.secs: $STORM_GROUP_MAPPING_SERVICE_CACHE_DURATION_SECS" >> /tmp/storm/conf/storm.yaml
echo "topology.enable.message.timeouts: $TOPOLOGY_ENABLE_MESSAGE_TIMEOUTS" >> /tmp/storm/conf/storm.yaml
echo "topology.debug: $TOPOLOGY_DEBUG" >> /tmp/storm/conf/storm.yaml
echo "topology.workers: $TOPOLOGY_WORKERS" >> /tmp/storm/conf/storm.yaml
echo "topology.message.timeout.secs: $TOPOLOGY_MESSAGE_TIMEOUT_SECS" >> /tmp/storm/conf/storm.yaml
echo "topology.executor.receive.buffer.size: $TOPOLOGY_EXECUTOR_RECEIVE_BUFFER_SIZE" >> /tmp/storm/conf/storm.yaml
echo "topology.executor.send.buffer.size: $TOPOLOGY_EXECUTOR_SEND_BUFFER_SIZE" >> /tmp/storm/conf/storm.yaml
echo "topology.receiver.buffer.size: $TOPOLOGY_RECEIVER_BUFFER_SIZE" >> /tmp/storm/conf/storm.yaml
echo "topology.transfer.buffer.size: $TOPOLOGY_TRANSFER_BUFFER_SIZE" >> /tmp/storm/conf/storm.yaml
echo "topology.worker.shared.thread.pool.size: $TOPOLOGY_WORKER_SHARED_THREAD_POOL_SIZE" >> /tmp/storm/conf/storm.yaml
echo "topology.trident.batch.emit.interval: $TOPOLOGY_TRIDENT_BATCH_EMIT_INTERVAL" >> /tmp/storm/conf/storm.yaml
echo "topology.testing.always.try.serialize: $TOPOLOGY_TESTING_ALWAYS_TRY_SERIALIZE" >> /tmp/storm/conf/storm.yaml

# Generate logback/cluster.xml
sed 's%STORM_LOG_DIR%/var/log/storm%g' $CONF_DIR/aux/cluster.xml  > tmp && mv tmp /tmp/storm/logback/cluster.xml
