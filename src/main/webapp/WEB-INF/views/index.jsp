<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="userinfo" value="${sessionScope.userInfo}"/>
<!DOCTYPE html>
<html>
<head>
	<title>Happy House :: Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<!-- JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
	<style>
		div, h1, h2, p {
	  		font-family: "Nanum Gothic", sans-serif;
	  		font-size: 18px;
		  }
	</style>
</head>
<body>
	<!-- header -->
	<c:if test="${userInfo != null}">
		<header>
			<div style="float: right;">
				<a><strong>${userInfo.id}</strong>님 환영합니다.</a>
				<br><a href="/ssafy/logout">로그아웃</a> 
				<br><a href="MVmodify.do">회원 정보 수정</a>
				<br><a href="mvSearchForm.do">회원 정보 검색</a>
				<br><a href="MVdelete.do">탈퇴</a>
			</div>
		</header>
	</c:if>

	<div class="jumbotron text-center mb-0">
		<h1>Happy House</h1>
	</div>
	<c:if test="${userInfo == null}">
		<h3>${msg}</h3>
		<%@ include file="/WEB-INF/views/user/login.jsp"%>
	</c:if>
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
					<h2>오늘의 뉴스</h2>
					<div class="separator-2"></div>
					<ul>
						<li>대우건설, 아스트로엑스 투자결정으로</li>
						<li>대우건설, 안산 푸르지오 브리파크 사이버 견본주택 운영 중</li>
						<li>한국토지주택공사(LH)</li>
						<li>서울·경기 12-2월 전월세 거래 역대 최대 기록 해</li>
						<li>서울 ‘전세난’...매매위축·금리인하 등 우려</li>
					</ul>
				</div>
				<!-- right content -->
				<div class="col-sm-8">
					<iframe src="http://happyhouse.jaen.kr/" width="100%" height="80%"></iframe>
					<p><a href="http://happyhouse.jaen.kr/">HappyHouse 본 페이지 바로가기</a></p>
				</div>
			</div>
		</div>
	</c:if>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>	
</body>
</html>
