#! /bin/bash

function gitall() {
	W=`pwd`    # just replace your directory path with pwd
	for i in $(find . -name .git) ; do
		D=$i
		D=${D%/*}
		cd $W/$D
		pwd
		git pull
	done
	cd $W # ensure we end up on the starting wd
}

gitall
