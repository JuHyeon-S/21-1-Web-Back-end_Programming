/**
 * 
 */ 
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 2 //지도의 레벨(확대, 축소 정도)
	};
var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon) // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
        
		var imageSrc = 'https://user-images.githubusercontent.com/46768760/121817523-e900e500-ccbc-11eb-93c2-109e47f98288.png', // 마커이미지의 주소입니다    
		    imageSize = new kakao.maps.Size(30, 30), // 마커이미지의 크기입니다
		    imageOption = {offset: new kakao.maps.Point(50, 50)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		      
		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		    markerPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치입니다
        // 마커와 인포윈도우를 표시합니다

        displayMarker(locPosition, markerImage, markerPosition);
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
        message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}


// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, markerImage, markerPosition) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
       	map: map,
        position: markerPosition,
        image: markerImage
    });         
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);
	marker.setMap(map);
}

function loca(){
	var moveLatLon = new kakao.maps.LatLng(37.603666, 127.143201);
    
    // 지도 중심을 이동 시킵니다
    map.setCenter(moveLatLon);
}
