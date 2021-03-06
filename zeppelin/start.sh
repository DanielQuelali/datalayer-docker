#!/bin/bash

# Licensed to Datalayer (http://datalayer.io) under one or more
# contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership. Datalayer licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

export CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $CUR_DIR/resources/datalayer-cli-colors.sh
$CUR_DIR/resources/datalayer-echo-header.sh

docker rm zeppelin > /dev/null 2>&1

if [ -z "$DOCKER_ZEPPELIN_PORT" ]
then
  export DOCKER_ZEPPELIN_PORT=8080
fi

if [ -z "$DOCKER_ZEPPELIN_NOTEBOOK_DIR" ]
then
  export DOCKER_ZEPPELIN_NOTEBOOK_DIR=/notebook
fi

if [ -z "$DOCKER_SPARK_MASTER" ]
then
  export DOCKER_SPARK_MASTER=local[*]
fi

if [ -z "$DOCKER_ZEPPELIN_LOG_CONSOLE" ]
then
  export DOCKER_ZEPPELIN_LOG_CONSOLE=true
fi

echo -e $YELLOW
echo -e "Environment"
echo -e "-----------"
echo -e "+ DOCKER_SPARK_MASTER="$DOCKER_SPARK_MASTER
echo -e "+ DOCKER_ZEPPELIN_NOTEBOOK_DIR="$DOCKER_ZEPPELIN_NOTEBOOK_DIR
echo -e "+ DOCKER_ZEPPELIN_PORT="$DOCKER_ZEPPELIN_PORT
echo -e "+ DOCKER_HADOOP_CONF_DIR="$DOCKER_HADOOP_CONF_DIR
echo -e "+ DOCKER_ZEPPELIN_LOG_CONSOLE="$DOCKER_ZEPPELIN_LOG_CONSOLE
echo -e $NO_COLOR

sudo docker run \
    -i \
    -t \
    -p 2222:22 \
    -p 4040:4040 \
    -p 8080:8080 \
    -e DOCKER_ZEPPELIN_LOG_CONSOLE=$DOCKER_ZEPPELIN_LOG_CONSOLE \
    -e HADOOP_CONF_DIR=$DOCKER_HADOOP_CONF_DIR \
    -e ZEPPELIN_PORT=$DOCKER_ZEPPELIN_PORT \
    -e ZEPPELIN_NOTEBOOK_DIR=$DOCKER_ZEPPELIN_NOTEBOOK_DIR \
    -e MASTER=$DOCKER_SPARK_MASTER \
    -h zeppelin.datalayer.io.local \
    --name zeppelin \
    datalayer/zeppelin "$@"
