#!/bin/bash

cd /software/hadoopstup/hadoop-2.8.5/bin/
hdfs dfs -rm -r /data_test/result_readcontext

cd /software/hadoopstup/hadoop-2.8.5
./bin/hadoop jar \
./share/hadoop/tools/lib/hadoop-streaming-2.8.5.jar \
-mapper /software/temp/readcontext/map_reder.py \
-input /data_test/context.txt \
-output /data_test/result_readcontext \
-file /software/temp/readcontext/map_reder.py


clear

echo "The Hadoop MapReduce Result are as follows: "

hdfs dfs -cat /data_test/result_readcontext/part-00000
