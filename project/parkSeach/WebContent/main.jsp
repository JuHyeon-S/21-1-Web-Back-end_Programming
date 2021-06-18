<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b0c005dff8ca7a106cb9bf4a85c14cb7"></script>
</head>
<body>
	<jsp:useBean id="brddb" class="parkSearch.parkDBCP" scope="page" />
    <div>
        <img src="">
    </div>
    <div id="map" style="width:100vw;height:100vh;"></div>
    <div id="info">
    
    </div>
    <script src="main.js"></script>
    
</body>
</html>