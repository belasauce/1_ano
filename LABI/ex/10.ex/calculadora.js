var op = "+";
function calcular (){
    var x = document.getElementById( "op1" );
    var y = document.getElementById( "op2" );
    x = parseFloat(x.value);
    y = parseFloat(y.value);
    if(op == "+"){
        document.getElementById( "res" ).value = x+y;
    }
    else if(op == "-"){
        document.getElementById( "res" ).value = x-y;
    }
    else if(op == "/"){
        document.getElementById( "res" ).value = x/y;
    }
    else if(op == "*"){
        document.getElementById( "res" ).value = x*y;
    }
}
function operacao(elemento) {
    var elementoSeleccionado = elemento.options[elemento.selectedIndex];
    op = elementoSeleccionado.value;
    console.log("Operação: " + op);
    document.getElementById( "op-view" ).innerHTML = op;
}