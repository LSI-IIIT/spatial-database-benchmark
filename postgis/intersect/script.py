import sys

choice = sys.argv[1]

layer1 = open('layer1_out.txt')
layer2 = open('layer2_out.txt')
misc = open('misc.txt')
index = open('index.txt')
intersect = open('intersect_out.txt')

for line in misc:
	print line

for line in layer1:
	print line

for line in layer2:
	print line

if choice == '1':
	for line in index :
		print line,

for line in intersect:
	print line
