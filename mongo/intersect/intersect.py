import re
#read_file = open('temp')
geometry=[]
final_geometry=[]
geo=[]
count_of_line = 0

crs = """,crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}"""
with open('layer1_output.txt') as f:
    read_file = f.readlines()[2:]

for line in read_file:
	count_of_line+=1
	line2= re.sub('\s+',' ',line)
	#print line2
	
	if(count_of_line ==15):
		count_of_line=0
		final_geometry.append(geometry)
		geometry=[]
	else:
	#		"geometry" : {
		if(line2 == """ "geometry" : { """):
			line2 = """$geometry : {"""
		if(line2 == """ "type" : "LineString", """):
			line2 = """type : "LineString","""
		geometry.append(line2)
	
for ele in final_geometry:
	line_append = ' '.join(ele)
	re.sub("  ", " ", line_append)
	geo.append( 'cursor = db.layer2.find( { geometry : { $geoIntersects :' +line_append+'}}}'+' , {_id : 0 , geometry : 1}'+')')

for elem in geo:
	print elem
