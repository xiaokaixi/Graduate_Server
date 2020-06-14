#!/bin/bash

cd /software/hadoopstup/hadoop-2.8.5/bin/
hdfs dfs -rm -r /data_test/result_wordcount

cd /software/hadoopstup/hadoop-2.8.5
./bin/hadoop jar \
/software/temp/wordcount/java/wordcount.jar \
wordcount.WordMain \
/data_test/2018-10-01.log \
/data_test/result_wordcount

clear

echo "The Hadoop MapReduce Result are as follows: "

hdfs dfs -cat /data_test/result_wordcount/part-00000
