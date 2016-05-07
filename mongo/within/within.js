conn = new Mongo();

db.conn.getDB("test");



db = db.getSiblingDB('within');



lineLayer= db.getCollection('lineLayer');

boxLayer= db.getCollection('boxLayer');



var count=0

var before =new Date() 
db.boxLayer.find({} , {

	"_id":0 , 

	"geometry":1

}).forEach(function(x){ 

	db.lineLayer.find({

		geometry:{

			$geoWithin:{

				$geometry:x.geometry

			}

		}

	}).forEach(function(y){

		//printjson(y)

	}) 

})

var after = new Date()



var exec = after-before

print(count,exec)
