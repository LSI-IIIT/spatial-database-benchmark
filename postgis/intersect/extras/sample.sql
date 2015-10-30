﻿SELECT null FROM layer2 WHERE  
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
 ST_Intersects(geom, ST_GeomFromText( ' LINESTRING(1.0 8.0,5.0 8.0 )'));
