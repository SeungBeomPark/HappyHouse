<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="userinfo" value="${sessionScope.userInfo}"/>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
		<style>
			a {
  				font-family: "Nanum Gothic", sans-serif;
  				font-size: 18px;
			}
		</style>
		<!-- JS -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		
	
	</head>
	<body>
	     <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
				<a href="/ssafy" class="navbar-brand">Happy House</a>
				<!-- Toggle Button -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="collapsibleNavbar">
					<ul class="navbar-nav">
						<li class="nav-item">
						<a href="${root}/houseList.do" class="nav-link">주택 실거래가 검색</a>
						</li>
						<li class="nav-item">
						<a href="${root}/listprefer.do" class="nav-link">선호지역</a>
						</li>
						<li class="nav-item">
						<a href="${root}/listEnv.do" class="nav-link">주택 환경 정보 검색</a>
						</li>
						<li class="nav-item">
						<a href="${root}/listCommerce.do" class="nav-link">주택 상권 정보 검색</a>
						</li>
						<li class="nav-item">
						<a href="${root}/listOneroom.do" class="nav-link">원룸(고시원) 정보</a>
						</li>
						<li class="nav-item">
						<a href="${root}/selfproduct.do" class="nav-link">자취생 코너</a>
						</li>
						<li class="nav-item">
						<a href="${root}/listNotice.do" class="nav-link">공지사항</a>
						</li>
						<li class="nav-item">
						<a href="${root}/listQnA.do" class="nav-link">QnA</a>
						</li>
						
					</ul>
				</div>
		</nav>

	</body>
</html>