EXPLAIN ANALYZE

SELECT *
FROM layer1 ,layer2
WHERE ST_Intersects(layer1.geom, layer2.geom);