import sys

choice = int(sys.argv[1])
layer1_size = int(sys.argv[2])
layer2_size = int(sys.argv[3])

misc = open('misc.txt')
layer1 = open('layer1_out.txt')
layer2 = open('layer2_out.txt')
index = open('index.txt')
intersect = open('intersect_out_ver2.txt')

if layer1_size!=0:
	print "\
DROP TABLE layer1;\n\
\n\
CREATE TABLE layer1\n\
(\n\
  name character varying,\n\
  geom geometry\n\
);\n\
"	
	for line in layer1:
		print line


if layer2_size != 0:
	print "\
DROP TABLE layer2;\n\
\n\
CREATE TABLE layer2\n\
(\n\
  name character varying,\n\
  geom geometry\n\
);\n\
"
	for line in layer2:
		print line

if choice == 1:
	for line in index :
		print line,

for line in intersect:
	print line
