[![Datalayer Spitifre](http://datalayer.io/ext/images/logo-datalayer-spitfire.png)](http://datalayer.io)

[![Docker](http://datalayer.io/ext/images/docker-logo-small.png)](https://www.docker.com/)

[![Datalayer](http://datalayer.io/ext/images/logo_horizontal_072ppi.png)](http://datalayer.io)

# Datalayer Docker Spitfire

## Get the image from the Docker Repository

[Datalayer](http://datalayer.io) provides an up-to-date Docker image for [Datalayer Spitfire](http://datalayer.io), the Professional WEB Notebook.

In order to get the image, you can run with the appropriate rights: `docker pull datalayer/spitfire:centos-6`

Run the Spitfire server with the `spitfire-docker-start` script.

If you don't want to clone this repository, simply run the following:

```
curl -s https://raw.githubusercontent.com/datalayer/datalayer-docker/master/spitfire/spitfire-docker-start | bash /dev/stdin`
```

You can now browser [http://localhost:8080](http://localhost:8080) to view the Notebook welcome page.

Read more on the online [Datalayer Docker Registry](https://hub.docker.com/u/datalayer/spitfire).

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
