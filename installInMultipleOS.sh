#!/bin/bash

if [ "$(uname)"=="Linux" ];
then
	echo "Linux OS"
	# yum install git -y
elif [ "$(uname)"=="Darwin" ];
then
	echo "MacOS"
	# brew install git
else
	echo "Installing Nothing"
fi
