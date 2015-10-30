conn = new Mongo();
db.conn.getDB("local");

db = db.getSiblingDB('within');

boxLayer= db.getCollection('boxLayer');
db.boxLayer.drop()
db.createCollection("boxLayer")
boxLayer= db.getCollection('boxLayer');

/*
no_records =10
x=0
y=0
diff =1
while(y+diff <= no_records){

	x=0;

	while( (x+diff <= no_records) ){

	boxLayer.insert(
		{
		  name : "box",
		  geometry : {
		    type : "Polygon",
		    coordinates : [ [x , y] , [x+diff , y] , [ x+diff, y+diff] , [x , y+diff] , [x,y] ]
		  }
		}
	)
		x = x +diff;
	}
	y = y+diff
	diff = diff+1
}
*/ 

//no_records=10
x=0
y=0
diff=1
while(diff <= no_records){
	x=0
	y=0
	X= x+diff
	Y= y+diff

	//draw bow
	boxLayer.insert(
		{
		  name : "box",
		  geometry : {
		    type : "Polygon",
		    coordinates : [ [x , y] , [X , y] , [ X, Y] , [x , Y] , [x,y] ]
		  }
		}
	)
	diff = diff + 1
}
