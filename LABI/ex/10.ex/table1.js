function mirko(tableID){
    var table=document.getElementById(tableID)
    for(var l = 0; l < 2; l++){ 
	    var cl = table.tBodies[0].rows[l].cloneNode(true)
	    table.tBodies[0].appendChild( cl ) 
    }
}