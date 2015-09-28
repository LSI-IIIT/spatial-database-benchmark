print ''' SELECT null
	from lineLayer as a , boxLayer as b
 	where ST_Within(a.geom , b.geom) ''' 