[![Apache Ambari](http://datalayer.io/ext/images/logo-ambari-2.png)](http://ambari.apache.org)

[![Docker](http://datalayer.io/ext/images/docker-logo-small.png)](https://www.docker.com/)

[![Datalayer](http://datalayer.io/ext/images/logo_horizontal_072ppi.png)](http://datalayer.io)

# Datalayer Docker Ambari

## Get the image from the Docker Repository

[Datalayer](http://datalayer.io) provides an up-to-date Docker image for [Apache Ambari](http://ambari.apache.org), the Manager for the Hadoop ecosystem.

In order to get the image, you can run with the appropriate rights:

`docker pull datalayer/ambari`

Run the Ambari server with the `ambari-docker-start` script.

and go to [http://localhost:8080](http://localhost:8080).

Read more on the online [Datalayer Docker Registry](https://hub.docker.com/u/datalayer/ambari).

## Build and Run

Build the Docker image with `ambari-docker-build` and run with `ambari-docker-start`.

You will need to download the Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files from [the Oracle WEB Site](http://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html) and place the file in the jce folder

# License

Copyright 2015 Datalayer http://datalayer.io

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
