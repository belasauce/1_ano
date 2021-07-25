var play = document.getElementsById("music1");


function play(elemento) {
    names = elementoSeleccionado.value;
    if(names=="play")
        names=pause;
    else
        names=play;
    document.getElementById( "op-view" ).innerHTML = names;
}