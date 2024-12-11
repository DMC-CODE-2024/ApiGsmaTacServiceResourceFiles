#!/bin/bash
. ~/.bash_profile

source ${commonConfigurationFile} 2>/dev/null

set -x
dbPassword=$(java -jar  ${pass_dypt} spring.datasource.password)

conn="mysql -h${dbIp} -P${dbPort} -u${dbUsername} -p${dbPassword} ${appdbName}"

`${conn} <<EOFMYSQL
 

EOFMYSQL`

echo "********************Thank You DB Process is completed now*****************"

