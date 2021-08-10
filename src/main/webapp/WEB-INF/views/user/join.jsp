<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="userinfo" value="${sessionScope.userInfo}"/>
<!DOCTYPE html>
<html>
<head>
<title>Happy House :: 회원가입</title>
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
		  	tr, td{
	  			font-family: "Nanum Gothic", sans-serif;
	  			font-size: 18px;
		  	}
		</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#registerBtn").click(function() {

			if ($("#id").val() == "") {
				alert("아이디 입력!!!");
				return;
			} else if ($("#password").val() == "") {
				alert("비밀번호 입력!!!");
				return;
			} else if ($("#password").val() != $("#pwdcheck").val()) {
				alert("비밀번호 확인!!!");
				return;
			} else if ($("#name").val() == "") {
				alert("이름 입력!!!");
				return;
			} else {
				$("#memberform").attr("action", "join.do").submit();
			}
		});
	});
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>	
	<div class="container" align="center">
		<div class="col-lg-6" align="center">
			<form id="memberform" method="post" action="${root}/main.do?act=join">
				<input type="hidden" name="act" id="act" value="join">
				<div class="form-group" align="left">
					<label for="">아이디</label> <input type="text" class="form-control"
						id="id" name="id" placeholder="">
				</div>
				<div class="form-group" align="left">
					<label for="">비밀번호</label> <input type="password"
						class="form-control" id="password" name="password" placeholder="">
				</div>
				<div class="form-group" align="left">
					<label for="">비밀번호재입력</label> <input type="password"
						class="form-control" id="pwdcheck" name="pwdcheck" placeholder="">
				</div>
				<div class="form-group" align="left">
					<label for="name">이름</label> <input type="text"
						class="form-control" id="name" name="name" placeholder="">
				</div>
				<div class="form-group" align="left">
					<label for="email">이메일</label><br>
					<div id="email" class="custom-control-inline">
						<input type="text" class="form-control" id="email" name="email" placeholder="" size="25">
					</div>
				</div>
				<div class="form-group" align="left">
					<label for="phone">전화번호</label>
					<div id="phone" class="custom-control-inline">
						<input type="text" class="form-control" id="phone" name="phone" placeholder="" size="25">
					</div>
				</div>
				<div class="form-group" align="center">
					<button type="button" class="btn btn-primary" id="registerBtn">회원가입</button>
					<button type="reset" class="btn btn-warning">초기화</button>
				</div>
			</form>
		</div>
	</div>
		<!-- footer -->
	<div class="jumbotron text-center mt-5 mb-0">
		<h3 class="text-secondary">Happy House</h3>
		<p>
			Happy House’s Homepage is powered by <span class="text-primary">SeungBeom
				& Jinhyang</span> / Designed by <span class="text-primary">SeungBeom &
				Jinhyang</span>
		</p>
	</div>
</body>
</html>