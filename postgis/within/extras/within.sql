DROP TABLE lineLayer;

CREATE TABLE lineLayer
(
  name character varying,
  geom geometry
);

DROP TABLE boxLayer;

CREATE TABLE boxLayer
(
  name character varying,
  geom geometry
);

INSERT INTO lineLayer VALUES
 ('Linestring','LINESTRING(2 1.0,3.0 1.0)'),
 ('Linestring','LINESTRING(4.0 1.0,5.0 1.0)'),
 ('Linestring','LINESTRING(6.0 1.0,7.0 1.0)'),
 ('Linestring','LINESTRING(8.0 1.0,9.0 1.0)'),
 ('Linestring','LINESTRING(1 2.0,2.0 2.0)'),
 ('Linestring','LINESTRING(3.0 2.0,4.0 2.0)'),
 ('Linestring','LINESTRING(5.0 2.0,6.0 2.0)'),
 ('Linestring','LINESTRING(7.0 2.0,8.0 2.0)'),
 ('Linestring','LINESTRING(9.0 2.0,10.0 2.0)'),
 ('Linestring','LINESTRING(2 3.0,4.0 3.0)'),
 ('Linestring','LINESTRING(6.0 3.0,8.0 3.0)'),
 ('Linestring','LINESTRING(1 4.0,3.0 4.0)'),
 ('Linestring','LINESTRING(5.0 4.0,7.0 4.0)'),
 ('Linestring','LINESTRING(2 5.0,5.0 5.0)'),
 ('Linestring','LINESTRING(1 6.0,4.0 6.0)'),
 ('Linestring','LINESTRING(7.0 6.0,10.0 6.0)'),
 ('Linestring','LINESTRING(2 7.0,6.0 7.0)'),
 ('Linestring','LINESTRING(1 8.0,5.0 8.0)'),
 ('Linestring','LINESTRING(2 9.0,7.0 9.0)'),
 ('Linestring','LINESTRING(1 10.0,6.0 10.0)');
INSERT INTO boxLayer VALUES
 ('Polygon','POLYGON((0 0,1 0,1 1,0 1,0 0))'),
 ('Polygon','POLYGON((0 0,2.0 0,2.0 2.0,0 2.0,0 0))'),
 ('Polygon','POLYGON((0 0,3.0 0,3.0 3.0,0 3.0,0 0))'),
 ('Polygon','POLYGON((0 0,4.0 0,4.0 4.0,0 4.0,0 0))'),
 ('Polygon','POLYGON((0 0,5.0 0,5.0 5.0,0 5.0,0 0))'),
 ('Polygon','POLYGON((0 0,6.0 0,6.0 6.0,0 6.0,0 0))'),
 ('Polygon','POLYGON((0 0,7.0 0,7.0 7.0,0 7.0,0 0))'),
 ('Polygon','POLYGON((0 0,8.0 0,8.0 8.0,0 8.0,0 0))'),
 ('Polygon','POLYGON((0 0,9.0 0,9.0 9.0,0 9.0,0 0))'),
 ('Polygon','POLYGON((0 0,10.0 0,10.0 10.0,0 10.0,0 0))');
SELECT null FROM lineLayer WHERE  
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,1 0,1 1,0 1,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,2.0 0,2.0 2.0,0 2.0,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,3.0 0,3.0 3.0,0 3.0,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,4.0 0,4.0 4.0,0 4.0,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,5.0 0,5.0 5.0,0 5.0,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,6.0 0,6.0 6.0,0 6.0,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,7.0 0,7.0 7.0,0 7.0,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,8.0 0,8.0 8.0,0 8.0,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,9.0 0,9.0 9.0,0 9.0,0 0))') ) or 
 ST_Within (geom, ST_GeomFromText('POLYGON((0 0,10.0 0,10.0 10.0,0 10.0,0 0))') ) ;
