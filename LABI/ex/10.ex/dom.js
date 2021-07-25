function calcular (){
    var x = document.getElementById( "op1" );
    var y = document.getElementById( "op2" );
    x = parseFloat(x.value);
    y = parseFloat(y.value);
    document.getElementById( "op" ).value = x;
    console.log( x );
    console.log( y );
}

window.onload = calcular;

