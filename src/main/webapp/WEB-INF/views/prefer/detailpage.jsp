<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="userinfo" value="${sessionScope.userInfo}"/>
<!DOCTYPE html>
<html>
	<head>
		<title>Happy House :: Detail Page</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- CSS -->
		<link rel="stylesheet"
		   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<!-- JS -->
		<script
		   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script
		   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script
		   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
		<style>
			div, h1, h2, p {
	  			font-family: "Nanum Gothic", sans-serif;
	  			font-size: 18px;
		  	}
		  	tr td{
		  		font-family: "Nanum Gothic", sans-serif;
	  			font-size: 18px;
		  	}
		</style>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff445780c6be5efd88fca00da006449b&libraries=services"></script>	
		<script>
	    	let coords;
			function setPosition(sido, gungu, dong, bunji){
	 	   		var address = sido + " " + gungu + " " + dong + " " + bunji;
	 	   		console.log(address);
	 	   		var geocoder = new kakao.maps.services.Geocoder();
			   	geocoder.addressSearch(address, function(result, status){
			   		if(status == kakao.maps.services.Status.OK){
			   			coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			   			var marker = new kakao.maps.Marker({
			   	            map: map,
			   	            position: coords
			   	        });
			   		}
			   		//coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			   		console.log(coords);
			   		map.setCenter(coords);
				});
		    }
		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/views/header.jsp"%>
	   <c:if test="${userInfo != null}">
	      <!-- content -->
	      <div class="container pt-3">
	      <h1 align="center">상세 정보</h1>
	         <div class="row">
	            <div class="col">
	               <!-- <img src="${root}/img/${houseinfo.img}" /> -->
	                  <br>
	                  <a>주소 : ${aptInfo.sido} ${aptInfo.gungu} ${aptInfo.dong} ${aptInfo.bunji}</a>
	                  <br>
	                  <a>아파트 이름 : ${aptInfo.aptname}</a>
	                  <br>
	                  <a>건축 연도 : ${aptInfo.yearNmonth}</a>
	                  <br>
	                  <a>난방 방식 : ${aptInfo.nanbangmethod}</a>
	                  <br>
	                  <a>난방 연료 : ${aptInfo.nanbangfuel}</a>
	                  <br>
	                  <c:if test="${aptInfo.gubuilding != ''}">
	                  <a>구청 : ${aptInfo.gubuilding}</a>
	                  <br>
	                  </c:if>
	                  <c:if test="${aptInfo.dongbuilding != ''}">
	                  <a>동사무소 : ${aptInfo.dongbuilding}</a>
	                  <br>
	                  </c:if>
	                  <c:if test="${aptInfo.space != ''}">                  
	                  <a>평 수 : ${aptInfo.space}</a>
	                  <br>
	                  </c:if>
	                  <c:if test="${aptInfo.room != ''}">                 
	                  <a>방 수 : ${aptInfo.room}</a>
	                  <br>
	                  </c:if>
	                  <c:if test="${aptInfo.bathroom != ''}">
	                  <a>화장실 수 : ${aptInfo.bathroom}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.firestation != ''}">                 
	                  <a>소방서 : ${aptInfo.firestation}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.police != ''}">               
	                  <a>경찰서 : ${aptInfo.police}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.bank != ''}">                
	                  <a>은행 : ${aptInfo.bank}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.hospital != ''}">                
	                  <a>병원 : ${aptInfo.hospital}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.sportscenter != ''}">                 
	                  <a>스포츠센터: ${aptInfo.sportscenter}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.shopingcenter != ''}">                 
	                  <a>쇼핑센터 : ${aptInfo.shopingcenter}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.school != ''}">                 
	                  <a>학교 : ${aptInfo.school}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.park != ''}">                
	                  <a>공원 : ${aptInfo.park}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.busnum != ''}">                 
	                  <a>버스 노선 : ${aptInfo.busnum}</a>
	                  <br>
	                   </c:if>
	                  <c:if test="${aptInfo.subway != ''}">                 
	                  <a>지하철: ${aptInfo.subway}</a>
	                  <br>
	                  </c:if>
	                	<script>
	                    	setPosition('${aptInfo.sido}', '${aptInfo.gungu}', '${aptInfo.dong}', '${aptInfo.bunji}')	                	
	                	</script>
	              <div id="map1" style="width:400px; height:300px;">
	              	<script>
		              	var container = document.getElementById('map1');
		    	    	var options = {
		    	          	center: new kakao.maps.LatLng(33.450701, 126.570667),
		    	          	level: 7
		    	    	};
		    	    	var map = new kakao.maps.Map(container, options); // 지도 생성
		    	    	//var imgsrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
		    	    	//var imgsize = new kakao.maps.Size(19, 35);
	      				//var markerimg = new kakao.maps.MarkerImage(imgsrc, imgsize);
				   		//var marker = new kakao.maps.Marker({
				   		//	map: map,
				   		//	position: coords,
				   		//	image: markerimg
				   		//});  	    	
	              	</script>   
	        	  </div>
	 
	         </div>
	      </div>
	   </div>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	   </c:if>
	   
	   <c:if test="${userInfo == null}">
	   		<%@ include file="/WEB-INF/views/user/login.jsp"%>
	   </c:if>
	</body>
</html>