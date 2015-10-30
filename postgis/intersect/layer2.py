import math
import sys

print "INSERT INTO layer2 VALUES"
no_records=int(sys.argv[1])
x=1.0
arr=[]
while(x<=no_records):
	
	if(x%2 == 0):
		y=1.0
	else:
		y=2.0
		
	diff = math.ceil(x/2)
	while(y +  math.ceil(diff*2)<=no_records):
		arr.append(''' ('Linestring',' LINESTRING(''' + str(x +0.5) +' '+str(y -0.5) +','+ str(x+0.5) +' '+str(y+diff-0.5)+ ''' )'),''')
		y = y + math.ceil(diff*2)	
	x= x+1

## code to delete comma and insert semicolon at the end of the file
size = len(arr)
length = len(arr[size-1])

temp_list = list(arr[size-1])
temp_list[length-1] = ";"

arr[size-1] = "".join(temp_list)


##code to print to output in a sql file
for line in arr:
	print line

#print 'select * from layer1;'