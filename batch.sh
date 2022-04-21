#!/bin/zsh

for i in {$2..$3}
do
    ./download.sh $1 $i
done
