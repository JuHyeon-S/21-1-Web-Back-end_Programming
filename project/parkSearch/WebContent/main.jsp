<%@page import="parkSearch.parkEntity"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>공원 찾아드려요.</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b0c005dff8ca7a106cb9bf4a85c14cb7"></script>
<link rel="stylesheet" href="main.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<%@ page import="java.util.ArrayList, parkSearch.parkEntity"%>
	<script type="text/javascript" src="guri.json"></script>
	<jsp:useBean id="pkdb" class="parkSearch.parkDBCP" scope="page" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script>
	<div class="slide-div"><br><br><br><br><br><br>
		<p style="color:#fbfbfb; font-size:70px;margin-left:50px; font-weight: bold;">당신의</p><br>
		<p style="color:#fbfbfb; font-size:70px;margin-left:50px; font-weight: bold;">공원</p><br><br>
		<div class="search_i">
                <input id="search_input" type="text" value="">
                <img src="https://user-images.githubusercontent.com/46768760/121933430-05665580-cd81-11eb-9cf2-95888646fdb0.png" onclick="loca()">
        </div>
        <p style="color:#fbfbfb;margin-left:55px;">지역을 입력해주세요</p>
        <div><br><br><br><br>
        	<input type="radio" name="a" style="color:#fbfbfb;margin-left:55px;"><span style="color:#fbfbfb;">시설 검색 (준비중)</span><p>
        	<input type="radio" name="a" checked style="color:#fbfbfb;margin-left:55px;"><span style="color:#fbfbfb;">지역 검색</span>
        </div>
	</div>
	<div class="button-div div-close">
	  <div class="button-open"></div>
	</div>
    <div id="map" style="width:100vw;height:100vh;"></div>
    <div id="info">
    	<div id="wrap">
		    <nav id="sidebar"></nav>
		    <button id="sidebarCollapse" >버튼</button>
		    <div class="overlay"></div>
		</div>
    </div>
    <script src="main.js"></script>
    <script src="marker.js"></script>
    <script type="text/javascript">
	    $('#sidebarCollapse').on('click', function () {
		    $('#sidebar').addClass('active');
		    $('#map').addClass('active');
		   /*  $('.overlay').fadeIn(); */
		});
	    
		$('.slide-div').click(function () {
			/* if($("#sidebar").is('active') === false){
			    console.log("1");
			    $('.overlay').fadeOut();
			}else{ */
				$('#sidebar').removeClass('active');
			    $('#map').removeClass('active');
			//}
		});
		$(".button-div").click(function(){
			  
			  $(this).toggleClass("div-close");
			  
			  if ($(this).hasClass("div-close")) {
				  $(".slide-div").animate({ left: "0px"}, 800);  
				    $(".button-div").animate({ left: "250px"}, 800);
				    $(this).find(".button-close").attr("class", "button-open");
			  } else {
				  $(".slide-div").animate({ left: "-250px"}, 800);  
				    $(".button-div").animate({ left: "0px"}, 800);
				    $(this).find(".button-open").attr("class", "button-close");
			    	$("#map").css("width","100vw");
			    	$("#map").css("width","100vw");
			  }
		});
    </script>
</body>
</html>