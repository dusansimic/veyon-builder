#!/usr/bin/env bash

set -ex

cd $2

ls *.rpm

# show files
for i in *.rpm ; do
	echo Contents of $i:
	rpm -qlp $i
done

# show dependencies
for i in *.rpm ; do
	echo Package information for $i:
	rpm -qpR $i
done
