with open('box_output.txt') as f:
    read_file = f.readlines()[1:]

print '''SELECT null FROM lineLayer WHERE  '''
### Un comment the follwowing line to get the results of within query and comment the above line
#print '''SELECT * FROM lineLayer WHERE  ''' 

arr=[]
count =0
for line in read_file:
	line = line[12:-3]
	arr.append(' ST_Within (geom, ST_GeomFromText(' + line +  ') ) or ' ) 

#code to remove 'or' and insert semi colon in the last line
size = len(arr)
length = len(arr[size-1])

temp_list = list(arr[size-1])
temp_list[length-3] = ""
temp_list[length-2] = ""
temp_list[length-1] = ";"
arr[size-1] = "".join(temp_list)

#to print the lines in a sql file
for line in arr:
	print line
