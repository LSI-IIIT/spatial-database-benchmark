db.conn.getDB("test");
db = db.getSiblingDB('intersect');

cursor = db.layer1.find({} , {geometry:1 , _id:0});

while ( cursor.hasNext() ) {
   printjson( cursor.next() );
}