#!/bin/bash
#set -x


tar -xzvf api_gsma_tac_1.0.0.tar.gz >> api_gsma_tac_1.0.0_untar_log.txt
mkdir -p ${APP_HOME}/api_service/api_gsma_tac/

mv api_gsma_tac_1.0.0/api_gsma_tac_1.0.0.jar ${RELEASE_HOME}/binary/

mv api_gsma_tac_1.0.0/*  ${APP_HOME}/api_service/api_gsma_tac/

cd ${APP_HOME}/api_service/api_gsma_tac/

ln -sf ${RELEASE_HOME}/binary/api_gsma_tac_1.0.0.jar api_gsma_tac.jar
ln -sf ${RELEASE_HOME}/global_config/log4j2.xml log4j2.xml
chmod +x *.sh

#uo3 Folder create 
mkdir -p ${LOG_HOME}/api_service/api_gsma_tac/

