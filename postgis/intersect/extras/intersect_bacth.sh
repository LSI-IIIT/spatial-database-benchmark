#!/bin/bash

echo -e "BEGIN;" >> sql/intersect.sql
echo -e "\timing;" >> sql/intersect.sql

for (( i = 10; i <=100; i+=10 )); do
	for (( j = 10; j <= 100; j+=10 )); do
		
		layer1_size=$i
		#echo $layer1_size
		python layer1.py $layer1_size > layer1_out.txt
		layer2_size=$j
		#echo $layer2_size
		python layer2.py  $layer2_size > layer2_out.txt
		python intersect.py > intersect_out.txt
		
		choice=0
		#echo $choice
		python script.py $choice > sql/intersect_$layer1_size"_"$layer2_size"_"$choice.sql
		echo -e "\i intersect_$layer1_size"_"$layer2_size"_"$choice.sql" >> sql/intersect.sql
		
		# choice=1
		# python script.py $choice > sql/intersect_$layer1_size"_"$layer2_size"_"$choice.sql
		# echo -e "\i intersect_$layer1_size"_"$layer2_size"_"$choice.sql" >> sql/intersect.sql

	done
done

echo -e "COMMIT;" >> sql/intersect.sql 