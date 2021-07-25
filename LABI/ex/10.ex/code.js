var s = "3";
var x;
var y;
x = 3;
y = 3;
console.log(x);
console.log("String + int");
console.log(s+x);
console.log("int + int");
console.log(y+x);
console.log("String * int");
console.log(s*x);
console.log("int * int");
console.log(y*x);
console.log("String - int");
console.log(s-x);
alert(x==y);
document.write(x);

function soma(x,y){
    return x+y;
    }

var resultado = soma(3,4);
console.log(resultado);

if (s == x)
    alert("Valores Iguais");
else
    alert("Valores Diferentes");

if (s === x)
    alert("Tipos Iguais");
else
    alert("Tipos Diferentes");

var a ="abc";
switch(a) {
    case "abc": alert("string abc"); break;
    case 3: alert("inteiro 3"); break;
    default: alert("outro");
}

var i = 3
do{
    i -= 1
}while(i=0)
console.log("i = " + i);

while(i <= 3){
    i += 1;
}
console.log("i = " + i);

for(var i=0;i<3;i++){
    document.write("<br />");
    document.write("uma-string" - 2);
    }
    document.write("<br />");
    document.write("Batman");

