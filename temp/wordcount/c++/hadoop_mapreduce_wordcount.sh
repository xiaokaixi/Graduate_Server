#!/bin/bash

cd /software/temp/wordcount/c++
g++ -o mapperC wordcount_map.cpp
g++ -o reduceC wordcount_reducer.cpp

cd /software/hadoopstup/hadoop-2.8.5/bin/
hdfs dfs -rm -r /data_test/result_wordcount

cd /software/hadoopstup/hadoop-2.8.5
./bin/hadoop jar \
./share/hadoop/tools/lib/hadoop-streaming-2.8.5.jar \
-file /software/temp/wordcount/c++/mapperC \
-mapper /software/temp/wordcount/c++/mapperC \
-file /software/temp/wordcount/c++/reduceC \
-reducer /software/temp/wordcount/c++/reduceC \
-input /data_test/2018-10-01.log \
-output /data_test/result_wordcount

clear

echo "The Hadoop MapReduce Result are as follows: "

hdfs dfs -cat /data_test/result_wordcount/part-00000
