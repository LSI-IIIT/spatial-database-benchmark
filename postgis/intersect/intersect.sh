#!/bin/bash

#! takes input of layer1 size and creates a table of layer1
echo -n "Enter Layer1 size > "
read layer1_size
if [ "$layer1_size" != "0" ]
then
	python layer1.py $layer1_size > layer1_out.txt
else 
	echo "Layer1 not disturbed"
fi

#!takes input of layer2 size and creates a table of layer2
echo -n "Enter Layer2 size > "
read layer2_size
if [ "$layer2_size" != "0" ]
then
	python layer2.py  $layer2_size > layer2_out.txt
else
	echo "Layer2 not disturbed"
fi

#not needed anymore
# #create sql for intersect query
# python intersect.py > intersect_out.txt

echo  "press 0 for non index"
echo  "press 1 for index"
read choice

python script.py $choice $layer1_size $layer2_size > intersect_$layer1_size"_"$layer2_size"_"$choice.sql