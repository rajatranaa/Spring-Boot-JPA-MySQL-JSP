/**
 * External js 
 */

function getSum(){
	
	var a = Number(document.getElementById("ist").value);
	var b = Number(document.getElementById("sc").value);
	var c = (a + b);
	
	document.getElementById("result").value = c;
	document.write("External file")
}