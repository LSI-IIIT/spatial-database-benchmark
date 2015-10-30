CREATE INDEX idx1
  ON layer2
  USING GIST (geom);
  
CREATE INDEX idx2
  ON layer2
  USING GIST (geom);