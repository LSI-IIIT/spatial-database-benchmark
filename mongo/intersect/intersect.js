conn = new Mongo();

db.conn.getDB("test");



db = db.getSiblingDB('intersect');



layer1= db.getCollection('layer1');

layer2= db.getCollection('layer2');



var count =0

var before =new Date() 
db.layer1.find({}, {

		"_id":0 ,

		"geometry":1

	}).forEach(function(x){   

		db.layer2.find( {

			geometry:{

				$geoIntersects:{

					$geometry:

					x.geometry

				}

			}

		})  

	})
var after = new Date()



var exec = after-before

print(count,exec)
