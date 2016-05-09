#This is the tutorial to develop and run test cases for Intersection query in postgis.
_Here we are trying to find out the time taken to calculate the Intersect query (horizontal lines intersecting with vertical line )_

***

**This tutorial is divided into three sections-**

1. Creating the dataset.
2. Creating the intersect query.
2. Running the query on PostGIS to get the query execution time.

***

_Assumptions/Notes:_

1. In this we are assuming that you have running postgres/postgis on your computer and the database has postgis extension.

2. You simply have to run `intersect.sh` and it will ask you size of both layers:

		a. The first layer is the **number of rows** of horizontal lines you want in the layer.

		b. The second layer is the **number of rows ** of vertical lines you want in the layer.

		c. `intersect.sh` also asks whether we want to index the datasets or, `1` for yes and `0` otherwise. 

3. `intersect.sh` on successful completion will create a file named `intersect.sql`

4. We are writing all the queries(including `create` and `ST_Intersects`  queries) in a single file `intersect.sql` and execute that file on the psql console and record the time for `ST_Intersects` query without any read and write operation.

***

###Part 1 Creating the dataset

**On Running `intersect.sh` the following will the flow**

1. It will ask for `layer_1_size`, then it will run `layer1.py` and create a intermediate file `layer1_out.txt` with the sql queries to create a table called `layer1` with line geometries in the database.
2. Same happens for `layer2`
3. If you don't want to change the existing table in the database, enter the `layer_size 0` when asked by `intersect.sh`
4. `intersect.sh` also asks whether want to index the datasets or, `1` for yes and `0` otherwise. The index queries are stored in another intermediate file `index.txt`.

###Part 2 Creating the query

1. The intersection query is stored in `intersect_out_ver2.txt`
2. `script.py` stitches all the intermediate text files together and create a sql file `intersect.sql` which is to be executed in the postgres console.

###Part 3 Running the query:

1. Now that we have `intersect.sql` file containing all the queries, we will execute the file on the console.
2. Login to the `psql` command line. 
3. Turn On the timing flag by `\timing` command in `psql` command line .
4. And run the `intersect.sql` by command `\i intersect.sql` in the `psql` console.

***

###NOTE : 

There is no write operation on the above queries. To check the query results replace `Select null from` in `intersect_out_ver2.txt` with `Select * from`

***

**Database connectivity:**
```bash
	* >sudo -u postgres createuser -P  `	USER_NAME`
	* >sudo -u postgres createdb -O  `USER_NAME` `DATABASE_NAME` 
	* >sudo -u postgres psql -c "CREATE EXTENSION postgis; CREATE EXTENSION postgis_topology;" `DATABASE_NAME`
	* >psql -h localhost -U `USER_NAME` `DATABASE_NAME`
```
**&copy; All rights Reserved | Lab for Spatial Informatics | International Institute of Information Technology Hyderabad **
_Please give the reference to the paper if using the dataset_