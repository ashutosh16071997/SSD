#!/bin/bash

read n

num=`ps -r | tr -s ' ' | cut -d ' ' -f 2 | wc -l`

ps -r | tr -s ' ' | cut -d ' ' -f 2 | head -$((num)) | tail -$((num-1)) > pid.txt 

cat pid.txt | head -$((n))


