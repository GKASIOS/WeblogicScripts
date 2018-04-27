#!/bin/sh
FILE=.process.pid
if [ -f $FILE ];
then
	PPID=`cat $FILE`
	kill -9 `ps -ef | awk -v ppid=$PPID '$3==ppid {print $2}'`
	rm $FILE
fi
