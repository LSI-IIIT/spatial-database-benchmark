conn = new Mongo();
db.conn.getDB("local");

db = db.getSiblingDB('intersect');

layer1= db.getCollection('layer1');
db.layer1.drop()
db.createCollection("layer1")
layer1= db.getCollection('layer1');

//no_records =10
y=1;
count =0;
while(y<=no_records){
	if(y%2 == 0)
		x=0.01;
	else
		x=0.02;
		
	diff = Math.ceil(y/2);
	while(x +  Math.ceil(diff*2)<=no_records){
		layer1.insert(
			{
				name : "line",
				geometry : {
			    	type : "LineString",
			    	coordinates : [ [x, y], [x+diff ,y] ]
			  	}
			}
		)
		x = x + Math.ceil(diff*2);
		//count++
	}
	y = y+0.01

}

/*
lines are created like this-
1. we will have horixontal line in each row.
2. max length of row in terms of coordinates is `no_records`
3. each two rows are horizontal lines of same length but alternate horizontal lines that is why we have different `x` values and ```diff = Math.ceil(y/2); ``` coordinates
4. after every two rows the size of line and gap between them increases by one.
	   
	   10
		9
		8
		7
		6  ------      ------
		5   ------      
		4  ----    ----    
		3   ----    ---- 
		2  --  --  --  --  --
		1   --  --  --  --  
		0 1 2 3 4 5 6 7 8 9 10
5. we stop making line when x+ diff is greater than no_records ie when graph can accomodate the new line.
6. use db
*/