#!/bin/bash

#! takes input of line layer size and creates a table of lines
echo -n "Enter Line Layer size > "
read line_layer_size
if [ "$line_layer_size" != "0" ]
then
    mongo --eval "var no_records=$line_layer_size" line_insert.js > temp.txt
    mongo line_display.js > line_output.txt
else 
	echo "Line Layer not diturbed"
fi

#!takes input of box layer size and creates a table of boxs
echo -n "Enter Box  Layer size > "
read box_layer_size
if [ "$box_layer_size" != "0" ]
then
    mongo --eval "var no_records=$box_layer_size" box_insert.js >temp.txt
	mongo box_display.js > box_output.txt
else
	echo "Box Layer not disturbed"
fi

#following 3 lines of code is not needed any more
### !opens the box layer and tailor it to a text file which contains only the geometry which will be inserted into within.js file
### ! the layer contains coordinates for each box
### python within.py > within_output.txt


#! stich everything together into a js file which will give the reult
echo  "press 0 for non index"
echo  "press 1 for index"
read choice
python script.py $choice > within.js

#!ready to shoot and baaaam!!
mongo within.js 
#mongo within.js >within_output.txt

#voila