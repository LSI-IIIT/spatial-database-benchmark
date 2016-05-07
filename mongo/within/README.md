This is the tutorial to develop and run test cases for Intersection query in postgis.

This tutorial is divided into two sections-
1. Creating the test case.
2. Running them on MongoDb to get the query execution time.

Part 1 :

Assumptions/Notes:
1. In this we are assuming that you have running mongoDb3.0.6 on your computer and the database has connected.
2. You simply have to run `within.sh` and it will ask you size of both layers:
	a. The fisrt layer is the number of rows of lines you want in the layer.
	b. The second layer is the number of rows of boxes you want in the layer.
3. We are writting all the queries in a single file and execute that file on the js console and record the time for just within query without any read and write operation.

Flow of data:
1. `within_header.txt` contains the queries to get the connector to the database and tha line table on which we have to apply the within function.
2. `line_insert.js`(`line_output.txt`) and `box_insert.js`(`box_output.txt`) will create temp files with the mongo queries to store those geometries in the database.
3. The `within.sh` also asks whether want to index the datasets or, `1` for yes and `0` otherwise. The index queries are stored in `index.txt`.
4. Finally we have `within.py` that will create with mongo queries for `within` functions and store them in `within_output.txt`
5. `script.py` stiches them all together and create a within.js which is to be executed in the postgres console.
6. Then we call the within.js file from the console which prints the time taken by the query to execute. . This step is the second part of the tutorial.

Database connectivity:
	* mongo 
	* use 'DATABASE_NAME'
	* db.crateteCollection('Collection_name')