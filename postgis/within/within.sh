#!/bin/bash

#! takes input of line layer size and creates a table of lines
echo -n "Enter Line Layer size > "
read line_layer_size
if [ "$line_layer_size" != "0" ]
then
	python line_insert.py $line_layer_size > line_output.txt
else 
	echo "Line Layer not diturbed"
fi

#!takes input of box layer size and creates a table of boxs
echo -n "Enter Box  Layer size > "
read box_layer_size
if [ "$box_layer_size" != "0" ]
then
	python box_insert.py  $box_layer_size > box_output.txt
else
	echo "Box Layer not disturbed"
fi

python within.py > within_output.txt

echo  "press 0 for non index"
echo  "press 1 for index"
read choice
python script.py $choice > within.sql