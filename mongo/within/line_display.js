db.conn.getDB("test");
db = db.getSiblingDB('within');

cursor = db.lineLayer.find({} , {geometry:1 , _id:0});

while ( cursor.hasNext() ) {
   printjson( cursor.next() );
}