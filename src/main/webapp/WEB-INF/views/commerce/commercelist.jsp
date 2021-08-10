<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>HappyHouse 상권정보 조회</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff445780c6be5efd88fca00da006449b"></script>
		<script src="//www.google.com/jsapi"></script>
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
		<style>
			div, h1, h2, p {
	  			font-family: "Nanum Gothic", sans-serif;
	  			font-size: 18px;
		  	}
		  	tr, th, td{
		  		font-family: "Nanum Gothic", sans-serif;
	  			font-size: 18px;
		  	}
		</style>
		<script>
			function searchCommerce() {
				if(document.getElementById("word").value == "") {
					alert("모든 목록 조회!!");
				}
				document.getElementById("searchform").action = "listCommerce.do";
				document.getElementById("searchform").submit();
			}
			let positions = new Array();
			var i = 0;
			
			var tmpdata = [];
			var first = ['상권 업종 분류', '수치'];//그래프에 나타낼 항목 배열 선언
			tmpdata.push(first);
	
			function insertRank(codename, count){ // 그래프에 띄우기 위한 데이터 삽입
				var test = [codename, count];
				tmpdata.push(test);
				console.log(tmpdata);
			}
			var options = {
				title: '상권 정보 분포 랭킹'
		 	};
			console.log(tmpdata);
			google.load('visualization', '1.0', {'packages':['corechart']});
		</script>
	</head>
	<body>
	
	<%@ include file="/WEB-INF/views/header.jsp"%>
	  <div class="container" align="center">
		  <h2 align="center">상권 정보 목록</h2>
		  <div class="row">
		  	<div class="col-6 col-sm-6">
			  	<div id="map" style="width:100%; height:300px;">
				    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff445780c6be5efd88fca00da006449b"></script>
		      		<script>
		      		function setPosition(lat, lng) {
			  			positions.push({latlng: new kakao.maps.LatLng(lat, lng)})
			  			let tmpLat = 35.822168;
		      			let tmpLng = 127.122277;
		      			if(positions.length > 0) {
		      				tmpLat = positions[0].latlng.Ha;
		  					tmpLng = positions[0].latlng.Ga;
		      			}
			      		var container = document.getElementById('map');
					    var options = {
					            center: new kakao.maps.LatLng(tmpLat, tmpLng),
					            level: 7
					    };
					    var map = new kakao.maps.Map(container, options); // 지도 생성
		      			var imgsrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
		      			for(var i=0;i<positions.length;i++){
		      				var imgsize = new kakao.maps.Size(19, 35);
		      				var markerimg = new kakao.maps.MarkerImage(imgsrc, imgsize);
		      				var marker = new kakao.maps.Marker({
		      					map: map,
		      					position: positions[i].latlng,
		      					image: markerimg
		      				});
		      			} 
			  		}
		      		
		      		</script>
		      </div>  
		  </div>
		  <div class="col-6 col-sm-6">
			  <div id="rankchart_material" style="width: 100%; height: 300px;">
				  		<!-- 서울 & 부산 상권에서 가장 많은 업종 TOP 5 정보 시각화 해주기 -->
					  		<c:if test="${Ranklist.size() != 0 }">
					  			<c:forEach var="rank" items="${Ranklist}">
					  				<script>	  					
					  					console.log('${rank.codename3}');
					  					console.log(${rank.count});
					  					insertRank('${rank.codename3}', ${rank.count});
					  				</script>
					  			</c:forEach>
					  		</c:if>
					  		<script type="text/javascript">
					  			google.setOnLoadCallback(function() {
								  var chart = new google.visualization.ColumnChart(document.querySelector('#rankchart_material'));
								  chart.draw(google.visualization.arrayToDataTable(tmpdata), options);
								});
					  		
					  		</script>
			  </div>
		  </div>
		  </div>
		</div>  	
	  		<p align="center">도시, 상호명, 업종으로 검색이 가능합니다</p> 
			  <form id="searchform" method="post" class="form-inline">
			  <table class="table table-borderless">
			  	<tr>
			  		<td align="right">
				  	  <select class="form-control" name="key" id="key">
				  	  	<option value="all" selected="selected">전체</option>
					    <option value="city">도시</option>
					    <option value="shopname">상호명</option>
					    <option value="codename3">업종</option>
					  </select>
					  <input type="text" class="form-control" placeholder="검색어 입력." name="word" id="word">
					  <button type="button" class="btn btn-primary" onclick="javascript:searchCommerce();">검색</button>
					</td>
			  	</tr>
			  </table>
			  </form>
			 	
			  <c:if test="${lists.size() != 0}">
				  <table class="table table-hover">	
					  <thead>
						<tr align="center">
							<th>도시</th>
							<th>동</th>
							<th>상호명</th>
							<th>업종</th>
						</tr>
					  </thead>
					  <tbody>
					    <c:forEach var="list" items="${lists}">
					    <script>
					  		setPosition(${list.lat}, ${list.lng})
					  	</script>
					      <tr>
					        <td>${list.city}</td>
					        <td>${list.dong}</td>
					        <td>${list.shopname}</td>
					        <td>${list.codename3}</td>
					      </tr>
					      </c:forEach>
					    </tbody>
					  </table>
			  </c:if>
			  
			  <c:if test="${lists.size() == 0}">
				  <table class="table table-active">
				    <tbody>
				      <tr class="table-info" align="center">
				        <td>상권 정보 목록을 조회할 수 없습니다.</td>
				      </tr>
				    </tbody>
				  </table>
			  </c:if>

	 <%@ include file="/WEB-INF/views/footer.jsp"%>
	</body>
</html>