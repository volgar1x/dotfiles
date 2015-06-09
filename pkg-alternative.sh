#!/usr/bin/env bash

path="$1"
pkg="$2"

acc="--install /usr/bin/$2 $2 $path/bin/$2 1"
for file in `ls $path/bin`; do
	if [[ "$file" != "$2" ]]; then
		acc="$acc --slave /usr/bin/$file $file $path/bin/$file"
	fi
done
# for file in `ls $path/lib`; do
#   lib=`echo $file | sed 's/\(.*\)-.*\.so/\1.so/'`
#   acc="$acc --slave /usr/lib/$file $lib $path/lib/$file"
# done

updalt=`which update-alternatives`

echo "sudo $updalt $acc"
