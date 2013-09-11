#!/bin/bash

f="BE[M|N]"
t="SHRI"


for i in `ack-grep --recurse --files-with-match --type=html $f ./www`
do
    reg="s/$f/$t/g"
    cp $i ${i}.bak
    sed -e $reg ${i}.bak > $i
    echo $i
done
