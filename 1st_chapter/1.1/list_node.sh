#!/bin/bash
ls -i . ..
#They are different directories accroding to the index node of . and ..
NODE1=`ls -i . .. | awk 'NR==2{print $1}'`
NODE2=`ls -i . .. | awk 'NR==4{print $1}'`
if [ $NODE1 != $NODE2 ]; then
	echo '. and .. are different directory'
else
	echo '. and .. are same directory'
fi

