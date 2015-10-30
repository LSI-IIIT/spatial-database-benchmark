
no_records =10
y=1;
while(y<=no_records){
	if(y%2 == 0)
		x=1;
	else
		x=2;
		
	diff = Math.ceil(y/2);
	while(x +  Math.ceil(diff)<=no_records){
		console.log(x +"," + y + "+" + (x+diff) + "," + y)
		x = x + Math.ceil(diff*2);
	}
	console.log( "x ="  + x)
	z = x +  Math.ceil(diff)
	console.log( "z ="  +z)
	y = y+1
}