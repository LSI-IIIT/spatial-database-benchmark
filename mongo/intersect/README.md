# This is the tutorial to develop and run test cases for Intersection query in mongoDB.
_Here we are trying to find out the time taken to calculate the Intersect query (horizontal lines intersecting with vertical line )_

***

**This tutorial is divided into three sections-**

1. Creating the dataset.
2. Creating the intersect query on MongoDb to get the query execution time.
3. Running the query.

***

_Assumptions/Notes:_

1. In this we are assuming that you have running **mongoDb3.0.6** on your computer and the database has connected.
2. You simply have to run `intersect.sh` and it will ask you size of both layers:

        1. The first layer is the **number of rows** of horizontal lines you want in the layer 1.
	
        2. The second layer is the **number of rows** of vertical lines you want in the layer 2.

        3. `intersect.sh` also asks whether we want to index the datasets or not, `1` for yes and `0` otherwise. 

3. `intersect.sh` on successful completion will create the tables in the database and also create a file `intersect.js` which will contain the **intersect** query 

***

###PART 1 Creating the dataset
**On Running `intersect.sh` the following will the flow**

1. It will ask for `Layer1_size`, and run `layer1_insert.js`(`layer1_output.txt`) which will create `layer1` table in DB which will contain all the horizontal lines.
2. It will then ask for `layer2_size` and run `layer2_insert.js`(`layer2_output.txt`)which will create `layer2` table in DB which will contain all the vertical lines.
3. If you don't want to change the existing table in the database, enter the `layer_size 0` when asked by `intersect.sh`

***

###PART 2 Creating the query

1. `intersect_header.txt` contains the queries to get the connector to the database and the cursor to the `layer1` and `layer2` on which we have to apply the intersect function.
2. `intersect_header_with_index.txt` contains the same content along with the indexing command on both layers.
3. `intersect_ver2.txt` that contains the nested query for intersect function
4. 'intersect_footer.txt` contains the code to calculate time and display it on the screen (only intersect query time is displayed without any read and write operation)
5. `script.py` stitches them all together and create a `intersect.js` which is to be executed in the mongo console.

***
###PART 3 Running the query
Then we call the intersect.js file from the console which prints the time taken by the query to execute. 
`>mongo intersect.js`

***
**Database connectivity:**
```bash
>mongo 
>use 'DATABASE_NAME'
>db.crateteCollection('Collection_name')
```

**&copy; All rights Reserved | Lab for Spatial Informatics | International Institute of Information Technology Hyderabad **
_Please give the reference to the paper if using the dataset_