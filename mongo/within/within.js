conn = new Mongo();

db.conn.getDB("test");



db = db.getSiblingDB('within');



lineLayer= db.getCollection('lineLayer');

db.lineLayer.createIndex( { geometry : "2dsphere" } )

var before =new Date() 
cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   1,   0   ],   [   1,   1   ],   [   0,   1   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   2,   0   ],   [   2,   2   ],   [   0,   2   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   3,   0   ],   [   3,   3   ],   [   0,   3   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   4,   0   ],   [   4,   4   ],   [   0,   4   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   5,   0   ],   [   5,   5   ],   [   0,   5   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   6,   0   ],   [   6,   6   ],   [   0,   6   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   7,   0   ],   [   7,   7   ],   [   0,   7   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   8,   0   ],   [   8,   8   ],   [   0,   8   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   9,   0   ],   [   9,   9   ],   [   0,   9   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

cursor = db.lineLayer.find( { geometry : { $geoWithin :{  $geometry : { type : "Polygon", coordinates : [ [[   0,   0   ],   [   10,   0   ],   [   10,   10   ],   [   0,   10   ],   [   0,   0   ]   ]],crs: { type: "name",properties: { name: "urn:x-mongodb:crs:strictwinding:EPSG:4326" }}}}}} , {_id : 0 , geometry : 1})

var after = new Date()



var count =0

while ( cursor.hasNext() ) {

	//printjson( cursor.next() );

	cursor.next()

    count++;

}





var exec = after-before

print(count,exec)
