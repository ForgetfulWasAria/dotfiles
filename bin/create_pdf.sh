#!/bin/bash

dirs=$(ls -D)

for d in $dirs;
do
	cd $d
	echo $d
	img2pdf --output ../$d.pdf $(ls | sort --numeric | paste -s -d" ")
	cd ..
done
