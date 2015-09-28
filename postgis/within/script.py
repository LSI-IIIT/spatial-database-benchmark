import sys

choice = sys.argv[1]

line_layer = open('line_output.txt')
box_layer = open('box_output.txt')
misc = open('misc.txt')
index = open('index.txt')
within = open('within_output.txt')

for line in misc:
	print line,
		
for line in line_layer:
	print line,

for line in box_layer:
	print line,

if choice == '1':
	for line in index :
		print line,

for line in within:
	print line,
