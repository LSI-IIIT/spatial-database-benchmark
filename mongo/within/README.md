# This is the tutorial to develop and run test cases for Within query in mongoDB.
_Here we are trying to find out the time taken to calculate the within query (lines lying within the box)_

***

**This tutorial is divided into three sections-**

1. Creating the test case.
2. Creating the within query on MongoDb to get the query execution time.
3. Running the query.

 	***

_Assumptions/Notes:_

1. In this we are assuming that you have running **mongoDb3.0.6** on your computer and the database has connected.
2. You simply have to run `within.sh` and it will ask you size of both layers:

        1. The first layer is the **number of rows** of lines you want in the line layer.
	
        2. The second layer is the **number of boxes** you want in the box layer.

        3. `within.sh` also asks whether we want to index the datasets or, `1` for yes and `0` otherwise. 

3. `within.sh` on successful completion will create the tables in the database and also create a file `within.js` which will contain the **within** query 

***

###PART 1 Creating the dataset

1. `line_insert.js`(`line_output.txt`) will create `lineLayer` table in DB which will contain all the horizontal lines.
2. `box_insert.js`(`box_output.txt`) will create `boxLayer` table in DB which will contain all the boxes on incremental size starting from origin.

***

###PART 2 Creating the query

1. `within_header.txt` contains the queries to get the connector to the database and the cursor to the `lineLayer` and `boxLayer` on which we have to apply the within function.
2. `within_header_with_index.txt` contains the same content along with the indexing command on both layers.
3. `within_output_ver2.txt` that contains the nested query for within function
4. 'within_footer.txt` contains the code to calculate time and display it on the screen (only within query time is displayed without any read and write operation)
5. `script.py` stitches them all together and create a `within.js` which is to be executed in the mongo console.

***
###PART 3 Running the query
Then we call the within.js file from the console which prints the time taken by the query to execute. 
`>mongo within.js`

***
**Database connectivity:**
```bash
>mongo 
>use 'DATABASE_NAME'
>db.crateteCollection('Collection_name')