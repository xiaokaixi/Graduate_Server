#!/usr/bin/env python
from operator import itemgetter
import sys
dick1={}
for line in sys.stdin:
    words = line.split("\n")
    if words[0][0]=='\t':
        continue
    else:
        word = words[0].split(",")
        if str(word[0]) in dick1:
            dick1[word[0]].append(int((word[1].split("\t"[0]))[0]))
        else:
            dick1[word[0]]=[int((word[1].split("\t"[0]))[0])]
for one in dick1:
    dick1[one].sort()
dick2=sorted(dick1.items(), key=lambda d:d[0], reverse = False)
for one in dick2:
    print(one)