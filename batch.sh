#!/bin/zsh

for i in {$2..$3}
do
    ./manga.sh $1 $i
done
