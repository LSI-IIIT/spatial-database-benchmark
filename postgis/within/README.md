#This is the tutorial to develop and run test cases for Within query in postgis.
_Here we are trying to find out the time taken to calculate the within query (lines lying within the box)_

***

***This tutorial is divided into two sections-***

1. Creating the dataset.
2. Creating the within query.
2. Running the query on PostGIS to get the query execution time.

***

_Assumptions/Notes:_

1. In this we are assuming that you have running postgres/postgis on your computer and the database has postgis extension.

2. You simply have to run `within.sh` and it will ask you size of both layers:
		1. The first layer is the **number of rows** of lines you want in the line layer.
	
		2. The second layer is the **number of boxes** you want in the box layer.

		3. `within.sh` also asks whether we want to index the datasets or, `1` for yes and `0` otherwise. 

3. `within.sh` on successful completion will create a file named `within.sql`

3. We are writing all the queries(including `create` and `ST_Within`  queries) in a single file `within.sql` and execute that file on the psql console and record the time for `ST_Within` query without any read and write operation.

###Part 1 Creating the dataset

**On Running `within.sh` the following will the flow**

1. It will ask for `Line_layer_size`, then it will run `line_insert.py` and create a intermediate file `line_output.txt` with the sql queries to create a table called `lineLayer` with line geometries in the database.
2. Same happens for `boxLayer`
3. If you don't want to change the existing table in the database, enter the `layer_size 0` when asked by `within.sh`
4. `within.sh` also asks whether want to index the datasets or, `1` for yes and `0` otherwise. The index queries are stored in another intermediate file `index.txt`.

###Part 2 Creating the query

1. The within query is stored in `within_out_ver2.txt1`
2. `script.py` stitches all the intermediate text files together and create a sql file `within.sql` which is to be executed in the postgres console.

###Part 3 Running the query:

1. Now that we have within.sql file containing all the queries, we will execute the file on the console.
2. Login to the `psql` command line. 
3. Turn On the timing flag by `\timing` command in `psql` command line .
4. And run the within.sql by command `\i within.sql` in the psql console.

###NOTE : 

There is no write operation on the above queries. To check the query results replace `Select null from` in `within_out_ver2.txt` with `Select * from`

***

**Database connectivity:**
```bash
	* >sudo -u postgres createuser -P  `	USER_NAME`
	* >sudo -u postgres createdb -O  `USER_NAME` `DATABASE_NAME` 
	* >sudo -u postgres psql -c "CREATE EXTENSION postgis; CREATE EXTENSION postgis_topology;" `DATABASE_NAME`
	* >psql -h localhost -U `USER_NAME` `DATABASE_NAME`


**&copy; All rights Reserved | Lab for Spatial Informatics | International Institute of Information Technology Hyderabad **
_Please give the reference to the paper if using the dataset_