DROP TABLE layer1;



CREATE TABLE layer1

(

  name character varying,

  geom geometry

);



DROP TABLE layer2;



CREATE TABLE layer2

(

  name character varying,

  geom geometry

);



INSERT INTO layer1 VALUES

 ('Linestring',' LINESTRING(2.0 1.0,3.0 1.0 )'),

 ('Linestring',' LINESTRING(4.0 1.0,5.0 1.0 )'),

 ('Linestring',' LINESTRING(6.0 1.0,7.0 1.0 )'),

 ('Linestring',' LINESTRING(8.0 1.0,9.0 1.0 )'),

 ('Linestring',' LINESTRING(1.0 2.0,2.0 2.0 )'),

 ('Linestring',' LINESTRING(3.0 2.0,4.0 2.0 )'),

 ('Linestring',' LINESTRING(5.0 2.0,6.0 2.0 )'),

 ('Linestring',' LINESTRING(7.0 2.0,8.0 2.0 )'),

 ('Linestring',' LINESTRING(2.0 3.0,4.0 3.0 )'),

 ('Linestring',' LINESTRING(6.0 3.0,8.0 3.0 )'),

 ('Linestring',' LINESTRING(1.0 4.0,3.0 4.0 )'),

 ('Linestring',' LINESTRING(5.0 4.0,7.0 4.0 )'),

 ('Linestring',' LINESTRING(2.0 5.0,5.0 5.0 )'),

 ('Linestring',' LINESTRING(1.0 6.0,4.0 6.0 )'),

 ('Linestring',' LINESTRING(2.0 7.0,6.0 7.0 )'),

 ('Linestring',' LINESTRING(1.0 8.0,5.0 8.0 )');

INSERT INTO layer2 VALUES

 ('Linestring',' LINESTRING(1.5 1.5,1.5 2.5 )'),

 ('Linestring',' LINESTRING(1.5 3.5,1.5 4.5 )'),

 ('Linestring',' LINESTRING(1.5 5.5,1.5 6.5 )'),

 ('Linestring',' LINESTRING(1.5 7.5,1.5 8.5 )'),

 ('Linestring',' LINESTRING(2.5 0.5,2.5 1.5 )'),

 ('Linestring',' LINESTRING(2.5 2.5,2.5 3.5 )'),

 ('Linestring',' LINESTRING(2.5 4.5,2.5 5.5 )'),

 ('Linestring',' LINESTRING(2.5 6.5,2.5 7.5 )'),

 ('Linestring',' LINESTRING(3.5 1.5,3.5 3.5 )'),

 ('Linestring',' LINESTRING(3.5 5.5,3.5 7.5 )'),

 ('Linestring',' LINESTRING(4.5 0.5,4.5 2.5 )'),

 ('Linestring',' LINESTRING(4.5 4.5,4.5 6.5 )'),

 ('Linestring',' LINESTRING(5.5 1.5,5.5 4.5 )'),

 ('Linestring',' LINESTRING(6.5 0.5,6.5 3.5 )'),

 ('Linestring',' LINESTRING(7.5 1.5,7.5 5.5 )'),

 ('Linestring',' LINESTRING(8.5 0.5,8.5 4.5 )');

CREATE INDEX idx1
  ON layer1
  USING GIST (geom);
  
CREATE INDEX idx2
  ON layer2
  USING GIST (geom);

   SELECT null FROM layer2 WHERE  

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(2.0 1.0,3.0 1.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(4.0 1.0,5.0 1.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(6.0 1.0,7.0 1.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(8.0 1.0,9.0 1.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(1.0 2.0,2.0 2.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(3.0 2.0,4.0 2.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(5.0 2.0,6.0 2.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(7.0 2.0,8.0 2.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(2.0 3.0,4.0 3.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(6.0 3.0,8.0 3.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(1.0 4.0,3.0 4.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(5.0 4.0,7.0 4.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(2.0 5.0,5.0 5.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(1.0 6.0,4.0 6.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(2.0 7.0,6.0 7.0 )')) or 

 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(1.0 8.0,5.0 8.0 )')) ;

