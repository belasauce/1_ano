
function showPosition(position){
	$("#location").html(position.coords.latitude+" "+position.coords.longitude);
}

$(document).ready(function() {
	navigator.geolocation.getCurrentPosition(showPosition);

	var mymap = L.map('mapid').setView([51.505, -0.09], 13);


	L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
		attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
		maxZoom: 18,
		id: 'mapbox/streets-v11',
		tileSize: 512,
		zoomOffset: -1,
		accessToken: 'pk.eyJ1Ijoic2h1Z3UxIiwiYSI6ImNrcG9jMmd6aDBrNW8yb3A0aDJxMnZjNGMifQ.YinHd39QtMUbh4Y6y77zAQ'
	}).addTo(mymap);

});
