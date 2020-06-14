#!/bin/bash
date +%F" "%H:%M:%S
hdfs dfs -rm -r /data_test/2018-10-01.log
hdfs dfs -put /software/temp/putdata/2018-10-01.log /data_test
date +%F" "%H:%M:%S
echo "put hadoop hdfs data success !"
