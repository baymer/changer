#!/bin/bash

f="BEM"
t="SHRI"


for i in `ack-grep --recurse --files-with-match --type=html $f ./www`
do
    reg="s/$f/$t/g"
    cp --force $i ./${i}.bak
    sed=-e $reg $i > $i
    echo $i
done
