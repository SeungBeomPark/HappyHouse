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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff445780c6be5efd88fca00da006449b&libraries=services"></script>

</head>
<body>
   <!-- header -->
 	<c:if test="${userInfo != null}">
		<header>
			<div style="float: right;">
				<a><strong>${userInfo.name}</strong>님 환영합니다.</a>
				<br><a href="/ssafy/logout">로그아웃</a> 
				<br><a href="/ssafy/MVmodify">회원 정보 수정</a>
				<br><a href="MVdelete.do">탈퇴</a>
			</div>
		</header>
	

   <div class="jumbotron text-center mb-0">
      <h1>Happy House</h1>
      <p>안녕하세요! Happy House입니다!</p>
   </div>

   <c:if test="${userInfo != null}">
   	<%@ include file="/WEB-INF/views/header.jsp"%>
      <!-- content -->
      <div class="container pt-3">
         <div class="row">
            <!-- left content -->
            <div class="col-sm-4">
               <h2>About Happy House</h2>
               <p>내 집 마련의 꿈! Happy House와 함께하세요!</p>
               <hr>
               <!-- side menu (link) -->
               <h3>사이드 메뉴</h3>
               <p>여기는 사이드 메뉴</p>
               <ul class="list-group">
                  <li class="list-group-item list-group-item-action"><a
                     href="#">링크1</a></li>
                  <li class="list-group-item list-group-item-action"><a
                     href="#">링크2</a></li>
                  <li class="list-group-item list-group-item-action"><a
                     href="#">링크3</a></li>
               </ul>
               <hr>
               <h3>오늘의 집</h3>
               <%-- <img src="banner3.jpg" class="img-fluid rounded p-3"> <img
               src="banner5.jpg" class="img-fluid rounded p-3">
               --%>
            </div>
            <!-- right content -->
            <div class="col-sm-8">
               <h1>자세한 정보</h1>
               <!-- <img src="${root}/img/${houseinfo.img}" /> -->
                  <br>
                  <a>아파트 이름 : ${houseinfo.aptName}</a>
                  <br>
                  <a>아파트 동 : ${houseinfo.dong}</a>
                  <br>
                  <a>건축연도 : ${houseinfo.buildYear}</a>
                  <br>
                  <a>아파트 지번 : ${houseinfo.jibun}</a>

                  <br>
                <script>
                	initMap(${houseinfo.lat}, ${houseinfo.lng})
                </script>
                <div id="map" style="width:500px; height:400px; margin:auto;"></div>
	             	<script src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js"></script>
	            	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD17EGExTuls24Q2jFq9Hry4JKKKbXCBG4&callback=initMap"></script>
	          		<script>
			           var multi= {lat: 37.5665734, lng: 126.978179};
			           var map;
			           
			           function initMap(lat, lng){
			        	  var multi= {lat: 37.5665734, lng: 126.978179};
				          var map;
			              $(this).attr('')
			              map = new google.maps.Map(document.getElementById('map'),{
			                 center : multi,
			                 zoom:17
			              });
			              
			              
			              var marker = new google.maps.Marker({
			            	  position: multi,
			            	  map: map
			            	  });
			              
			           }
	           
	           
	          		</script> 
               
            </div>
         </div>
      </div>
   </c:if>
   
	<%@ include file="/WEB-INF/views/footer.jsp"%>
   </c:if>
   
   <c:if test="${userInfo == null}">
   		<%@ include file="/WEB-INF/views/user/login.jsp"%>
   </c:if>
</body>
</html>