import math
import sys
print "INSERT INTO boxLayer VALUES"

#no_records=10
no_records = int(sys.argv[1])

x=0.0
y=0.0
diff=1
arr=[]
while(diff<=no_records):
	
	x=0
	y=0
	X=x+diff
	Y=y+diff

	arr.append(''' ('Polygon','POLYGON((''' + 
		str(x) +' '+str(y) +',' +
		str(X) +' '+str(y) +',' + 
		str(X) +' '+str(Y) +',' +
		str(x) +' '+str(Y) +',' +
		str(x) +' '+str(y) +
		'''))'),''')
	
	diff = diff + 1.0


## code to delete comma and insert semicolon at the end of the file
size = len(arr)
length = len(arr[size-1])

temp_list = list(arr[size-1])
temp_list[length-1] = ";"

arr[size-1] = "".join(temp_list)

#code to print to output in a sql file
for line in arr:
	print line

#print 'select * from box_layer;'