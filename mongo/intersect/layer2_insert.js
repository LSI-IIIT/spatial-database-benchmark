conn = new Mongo();
db.conn.getDB("local");

db = db.getSiblingDB('intersect');

layer2= db.getCollection('layer2');
db.layer2.drop()
db.createCollection("layer2")
layer2= db.getCollection('layer2');

//no_records =10
x=1; 
count =0;
while(x<=no_records){
	if(x%2 == 0)
		y=0.01;
	else
		y=0.02;
		
	diff = Math.ceil(x/2);
	while(y +  Math.ceil(diff*2)<=no_records){
		layer2.insert(
			{
				name : "line",
				geometry : {
					type : "LineString",
					coordinates : [ [x +0.005,y -0.005], [x+0.005 ,y+diff-0.005] ]
				}
			}
		)
		y = y + Math.ceil(diff*2);
		///count++
	}
	x = x+0.01

}