import sys

choice = sys.argv[1]

header = open("within_header.txt")
header_index =  open("within_header_with_index.txt")
body = open("within_output_ver2.txt")
footer = open("within_footer.txt")

if choice == '1':
	for line in header_index:
		print line
else:	
	for line in header:
		print line

for line in body:
	
	line_list = list(line)
	
	# #print line_list[106]
	# line_list[106] = "["
	# #sprint line_list[106]
	
	# #print line_list[-39]
	# line_list[-121] = "]"
	# #print line_list[39]

	line = "".join(line_list)
	print line

for line in footer:
	print line