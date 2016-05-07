#!/bin/bash

#! takes input of line layer size and creates a table of horizontal lines
echo -n "Enter Layer 1 size > "
read layer1_size
if [ "$layer1_size" != "0" ]
then
    mongo --eval "var no_records=$layer1_size" layer1_insert.js > temp.txt
    mongo layer1_display.js > layer1_output.txt
else 
	echo "Layer 1 not disturbed"
fi

#! takes input of line layer size and creates a table of vertical lines
echo -n "Enter Layer 2 size > "
read layer2_size
if [ "$layer2_size" != "0" ]
then
    mongo --eval "var no_records=$layer2_size" layer2_insert.js >temp.txt
	mongo layer2_display.js > layer2_output.txt
else
	echo "Layer 2 not disturbed"
fi

#!opens the layer1 and tailor it to a text file which contains only the geometry which will be inserted into intersect.js file
#! the layer contains coordinates for each line
#python intersect.py > intersect_output.txt

#! stitch everything together into a js file which will give the result
echo  "press 0 for non index"
echo  "press 1 for index"
read choice
python script.py $choice > intersect.js

#!ready to shoot and baaaam!!
mongo intersect.js 

#voila