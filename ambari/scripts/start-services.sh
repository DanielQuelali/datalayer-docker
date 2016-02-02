#!/bin/bash

# Licensed to Datalayer (http://datalayer.io) under one or
# more contributor license agreements.  See the NOTICE file
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

source /datalayer-cli-colors.sh

/datalayer-echo-header.sh

echo
echo "Setting up LDAP..."
/etc/setup-ldap.sh

echo
echo $GREEN$BOLD"Stopping/Starting needed services..."$NOBOLD$NOCOLOR

service iptables stop

service ntpd start

service krb5kdc start
service kadmin start

service sshd start

echo
echo $GREEN$BOLD"Setting up and Starting Ambari..."$NOBOLD$NOCOLOR
ambari-agent start
ambari-server setup -s -j /usr/lib/jvm/jre-1.7.0-openjdk.x86_64
ambari-server start

echo
echo $GREEN$BOLD"Use this key to configure your cluster..."$NOBOLD$NOCOLOR

cat /root/.ssh/id_rsa

# tail -f /var/log/ambari-server/ambari-server.log

exec /bin/bash
