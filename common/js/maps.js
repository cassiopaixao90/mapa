

$(document).ready(function(){
	if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(initialize)
    } else { 
        x.innerHTML = "Geolocation não é suportado por este browser";
    }
	google.maps.event.addDomListener(window, 'load', initialize);
});
function initialize(position){
			var myLatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
			var mapOptions={
				zoom: 17,
				center: myLatLng
			},
			map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);	
			var marker = new google.maps.Marker({
			    position: myLatLng, 
			    map: map, 
			    //icon: 'img/user.png',
			    title: "Olá, você está aqui! "+position.coords.accuracy+""
			});
			
			setMarkers(map,marcador);
	}
	
	function setMarkers(map,locations){
		for(var i=0; i<locations.length; i++){
			var station = locations[i];
			var myLatLng = new google.maps.LatLng(station['Latitude'], station['Longitude']);
			var infoWindow = new google.maps.InfoWindow();
			var image = 'img/icone.png';
			
			 var marker = new google.maps.Marker({
				position: myLatLng,
				map: map,
				icon: image,
				title: station['Descricao']
			});
			
			(function(i){
				google.maps.event.addListener(marker, "click",function(){
					var station = locations[i];
					infoWindow.close();
					infoWindow.setContent(
						"<div id='infoWindow'>"
						+"<p class='texte'>"+station['Descricao']+"<p>"
						+"</div>"
					);
					infoWindow.open(map,this);
				});
			})(i);
		}
	}



//$(function() {
//
//	/**********************************************
//	 * carte Google Maps
//	 **********************************************/
////	var myLatLng = new google.maps.LatLng(-8.1872626, -34.9652414);
//	function initialize(){
////			var myLatLng = new google.maps.LatLng(43.604482, 1.443962);
//		var myLatLng = new google.maps.LatLng(-8.1872626, -34.9652414);
//			var mapOptions={
//				zoom: 12,
//				center: myLatLng
//			},
//			map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions); 
//			setMarkers(map,marker);
//	}
//	
//	function setMarkers(map,locations){
//		for(var i=0; i<locations.length; i++){
//			var station = locations[i];
////			var myLatLng = new google.maps.LatLng(station['marker_latitude'], station['marker_longitude']);
//			var myLatLng = new google.maps.LatLng(station[i][3], station[i][4]),
//			var infoWindow = new google.maps.InfoWindow();
//			var image = 'common/images/marker-map/'+station['icone_icon']+'.png';
//			
//			var marker = new google.maps.Marker({
//				position: myLatLng,
//				map: map,
//				icon: image,
//				title: station['marker_ville']
//			});
//			
//			(function(i){
//				google.maps.event.addListener(marker, "click",function(){
//					var station = locations[i];
//					infoWindow.close();
//					infoWindow.setContent(
//						"<div id='infoWindow'>"
//						+"<p class='texte'>"+station['marker_text']+"<p>"
//						+"</div>"
//					);
//					infoWindow.open(map,this);
//				});
//			})(i);
//		}
//	}
//	google.maps.event.addDomListener(window, 'load', initialize);
//});