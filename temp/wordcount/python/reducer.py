#!/usr/bin/env python
import sys
list = []
list_count = []
for word in sys.stdin:
    word = word.strip()
    word_l = word.split('\t')
    if word_l[0] not in list:
        list.append(word_l[0])
        list_count.append(1)
    else:
        list_count[len(list)-1] += 1
for i in range(len(list)):
    print(list[i]+'\t'+str(list_count[i])) 