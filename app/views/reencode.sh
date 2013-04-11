#!/bin/bash

for fic in $(ls -R)
do
    if [ -f $fic ]
    then
	fic=$(realpath $fic)
	recode $(file -i $fic | cut -d= -f2)..utf-8 $fic
    elif [ -d $fic ]
    then
	cd $(realpath $fic)
    fi
done