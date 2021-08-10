<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<title>Happy House :: Home</title>
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
			h1, h2, p, th {
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
		<c:if test="${findUser != null}">
			<div class="container" align="center" style="text-align: center; width: 20%; margin-top: 30px" >
	
			<table class="table table-bordered">
				<th class="table-dark">회원정보</th>
				<th class="table-dark">결과값</th>
				<tr><!-- 첫번째 줄 시작 -->
				    <td>아이디</td>
				    <td>${findUser.id}</td>
				</tr><!-- 첫번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>비밀번호</td>
				    <td>${findUser.password}</td>
				</tr><!-- 두번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>이름</td>
				    <td>${findUser.name}</td>
				</tr><!-- 두번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>이메일</td>
				    <td>${findUser.email}</td>
				</tr><!-- 두번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>전화번호</td>
				    <td>${findUser.phone}</td>
				</tr><!-- 두번째 줄 끝 -->
			    </table>
			</div>

			<!-- footer -->
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</c:if>
	</body>
</html>
