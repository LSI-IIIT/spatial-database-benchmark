import sys

choice = int(sys.argv[1])
line_layer_size = int(sys.argv[2])
box_layer_size = int(sys.argv[3])

line_layer = open('line_output.txt')
box_layer = open('box_output.txt')
index = open('index.txt')
within = open('within_output.txt')

if line_layer_size != 0:
	print "\n\
DROP TABLE lineLayer;\n\
\n\
CREATE TABLE lineLayer\n\
(\n\
  name character varying,\n\
  geom geometry\n\
);\n\
"
	for line in line_layer:
		print line,

if box_layer_size != 0:
	print "\n\
DROP TABLE boxLayer;\n\
\n\
CREATE TABLE boxLayer\n\
(\n\
  name character varying,\n\
  geom geometry\n\
);\n\
"
	for line in box_layer:
		print line,

if choice == 1:
	for line in index :
		print line,

for line in within:
	print line,
