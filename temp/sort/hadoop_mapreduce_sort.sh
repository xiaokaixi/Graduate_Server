#!/bin/bash
cd /software/hadoopstup/hadoop-2.8.5/bin/
hdfs dfs -rm -r /data_test/result_sort

cd /software/temp/sort
chmod +x mapper.py
chmod +x reducer.py

cd /software/hadoopstup/hadoop-2.8.5
./bin/hadoop jar \
./share/hadoop/tools/lib/hadoop-streaming-2.8.5.jar \
-file /software/temp/sort/mapper.py \
-mapper /software/temp/sort/mapper.py \
-file /software/temp/sort/reducer.py \
-reducer /software/temp/sort/reducer.py \
-input /data_test/data.txt \
-output /data_test/result_sort

clear

echo "The Hadoop MapReduce Result are as follows: "

hdfs dfs -cat /data_test/result_sort/part-00000
