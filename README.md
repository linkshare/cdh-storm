Storm Parcel and CSD for Cloudera's CDH 5
=============
This Storm Parcel and CSD greatly simplifies setting up a Storm cluster on your Cloudera cluster.

## Table of Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*

- [Storm Parcel and CSD for Cloudera's CDH 5](#storm-parcel-and-csd-for-clouderas-cdh-5)
    - [Installation](#installation)
      - [1. Install the CSD](#1-install-the-csd)
      - [2. Downloading and Distributing Storm Parcel](#2-downloading-and-distributing-storm-parcel)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### Installation

#### 1. Install the CSD

1. Download the latest CSD release from this repository (alternatively, you can build it using the maven command "mvn assembly:assembly" and use the jar compiled in target folder)
2. Upload the CSD jar to your Cloudera Manager node, place it in /opt/cloudera/csd/
3. Restart cloudera-scm-manager on Clouder Manager node:

```bash
service cloudera-scm-server restart
```


#### 2. Downloading and Distributing Storm Parcel

1. Clone this git repository (you do not need to clone it inside your Cloudera cluster)
2. Setup a quick HTTP server to serve as cloudera repository, the HTTP server will need to serve the "parcel" directory:

  ```bash
  cd parcel
  python -m SimpleHTTPServer
  ```
3. Go to your Cloudera Manager: http://x.x.x.x:7180 and login with your admin credentials
4. Click on the parcels icon on the top right corner (next to the search bar)
5. Click on "Edit Settings"
6. Add a new value in "Remote Parcel Repository URLs", enter the IP address for the machine on which you just setup your HTTP server, for example: http://x.x.x.x:8000 
7. Save your changes and go back to Parcels page by clicking on the Parcels icon on the top right corner (next to the search bar)
8. Click on "Check for New Parcels"
9. You should see "STORM" parcel in the list. Download it, then distribute it and activate it
10. You will be prompted to restart your cluster, click "Restart". Once that's done, you will need to restart "Cloudera Management Service" manually as well
11. Now you should be able to simply add your new Storm service through CM. (click on the little arrow next your cluster name and click "Add Service", follow the wizard instructions)





