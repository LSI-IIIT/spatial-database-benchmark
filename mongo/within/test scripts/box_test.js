no_records=10
x=0
y=0
diff=1
while(y+diff <= no_records){
	x = 0
	while(x+diff <= no_records){
		X = x+diff
		Y = y+diff
		console.log( x + "," + y + " + " + X + "," + y + " + " + x + "," + Y + " + " + X + "," + Y  );	
		x = x+diff
	}
	y = y+diff
	diff = diff+1
}