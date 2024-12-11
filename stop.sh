#!/bin/bash

. ~/.bash_profile

process="api_gsma_tac"

script_name="./stop.sh"
count=`ps -ef | grep $process | grep -v grep | grep -v "$script_name" | wc -l`

 if [ $count -eq 0 ]
        then
                echo "No Process Runing"
        else
        kill  $(ps aux | grep "$process" | grep -v grep | grep -v "$script_name" | awk '{print $2}')
        sleep 5
	ps -ef | grep "$process" | grep -v grep |  grep -v "$script_name" | awk '{print $2}' | xargs kill 
	echo "Process $process killed"
 fi
exit;

