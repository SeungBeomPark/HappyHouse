<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자취생 물품 순위</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
		<script src="//www.google.com/jsapi"></script>
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
	</head>
	<body>
		<%@ include file="/WEB-INF/views/header.jsp"%>
		
		<div class="container">
		<h2 align="center">자취 물품 꿀팁 리스트(출처 : 원룸 만들기)</h2>
			<h5><a href="https://oneroommaking.com/category/%ED%95%84%EC%9A%94%ED%95%9C-%EA%B2%83%EB%A7%8C/66/">
			1. 필요한 것만 알뜰하게!(알뜰살뜰 자취 초보에 제격) BEST 5 </a></h5>
			<div class="row">			
				<c:if test="${list1.size() != 0}">					
					<c:forEach var="product1" items="${list1}">	
						<div class="col" id="necessary_product">
							<c:if test="${product1.no == 1}">
								<img src="images/필요1위.JPG"><br>
							</c:if>	
							<c:if test="${product1.no == 2}">
								<img src="images/필요2위.JPG"><br>
							</c:if>	
							<c:if test="${product1.no == 3}">
								<img src="images/필요3위.JPG"><br>
							</c:if>	
							<c:if test="${product1.no == 4}">
								<img src="images/필요4위.JPG"><br>
							</c:if>	
							<c:if test="${product1.no == 5}">
								<img src="images/필요5위.JPG"><br>
							</c:if>
							<p>상품 이름 : ${product1.p_name}</p>
							<p>내용 : ${product1.content}</p>
							<p>가격 : ${product1.price}</p>
						</div>					
					</c:forEach>				
				</c:if>
				
			</div>
			<h5><a href="https://oneroommaking.com/product/list.html?cate_no=67">2. 자취 2년차 이상 (자칭 자취 중수) BEST 5</a></h5>
			<div class="row">
				
				<c:if test="${list2.size() != 0}">
					<c:forEach var="product2" items="${list2}">
						<div class="col" id="uptwoyears">
							<c:if test="${product2.no == 1}">
							<img src="images/2년차1위.JPG">
							</c:if>	
							<c:if test="${product2.no == 2}">
							<img src="images/2년차2위.JPG">
							</c:if>	
							<c:if test="${product2.no == 3}">
							<img src="images/2년차3위.JPG">
							</c:if>	
							<c:if test="${product2.no == 4}">
							<img src="images/2년차4위.JPG">
							</c:if>	
							<c:if test="${product2.no == 5}">
							<img src="images/2년차5위.JPG">
							</c:if>
							<p>상품 이름 : ${product2.p_name}</p>
							<p>내용 : ${product2.content}</p>
							<p>가격 : ${product2.price}</p>
						</div>
					</c:forEach>
				</c:if>				
			</div>
			<h5><a href="https://oneroommaking.com/product/list.html?cate_no=215">3. 자취의 달인(ㅎㄷㄷㄷㄷㄷㄷㄷㄷ고수다) BEST 5</a></h5>
			<div class="row">
				
				<c:if test="${list3.size() != 0}">
					<c:forEach var="product3" items="${list3}">
						<div class="col" id="selflivingpro">
							<c:if test="${product3.no == 1}">
								<img src="images/달인1위.JPG">
							</c:if>	
							<c:if test="${product3.no == 2}">
								<img src="images/달인2위.JPG">
							</c:if>	
							<c:if test="${product3.no == 3}">
								<img src="images/달인3위.JPG">
							</c:if>	
							<c:if test="${product3.no == 4}">
								<img src="images/달인4위.JPG">
							</c:if>	
							<c:if test="${product3.no == 5}">
								<img src="images/달인5위.JPG">
							</c:if>
							<p>상품 이름 : ${product3.p_name}</p>
							<p>내용 : ${product3.content}</p>
							<p>가격 : ${product3.price}</p>
						</div>
					</c:forEach>
				</c:if>				
			</div>
		</div>
		<%@ include file="/WEB-INF/views/footer.jsp"%>		
	</body>
</html>