import sys

choice = sys.argv[1]

header = open("intersect_header.txt")
header_index =  open("intersect_header_with_index.txt")
body = open("intersect_ver2.txt")
footer = open("intersect_footer.txt")

if choice == '1':
	for line in header_index:
		print line
else:	
	for line in header:
		print line

for line in body:
	
	line_list = list(line)
	
	print line

for line in footer:
	print line