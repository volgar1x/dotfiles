#!/usr/bin/env bash

path="$1"

acc="--install /usr/bin/java java $path/bin/java 1"
for file in `ls $path/bin`; do
	if [[ "$file" != "java" ]]; then
		acc="$acc --slave /usr/bin/$file $file $path/bin/$file"
	fi
done

updalt=`which update-alternatives`

echo "sudo $updalt $acc"
