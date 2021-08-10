<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="userinfo" value="${sessionScope.userInfo}"/>
<!DOCTYPE html>
<html>
<head>
<title>Happy House :: 회원수정</title>
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
<script type="text/javascript">
	$(document).ready(function() {
		$("#updateBtn").click(function() {
			 if ($("#password").val() == "") {
				alert("비밀번호 입력!!!");
				return;
			} else if ($("#password").val() != $("#pwdcheck").val()) {
				alert("비밀번호 확인!!!");
				return;
			} else if ($("#name").val() == "") {
				alert("이름 입력!!!");
				return;
			} else {
				$("#memberform").attr("action", "modify.do").submit();
			}
		});
	});
</script>
</head>
<body>
<div class="jumbotron text-center mb-0">
		<h1>Happy House</h1>
		<p>안녕하세요! Happy House입니다!</p>
	</div>
	<div class="container" align="center">
		<div class="col-lg-6" align="center">
			<form id="memberform" method="post">
				<input type="hidden" name="act" id="act" value="update">
				<div class="form-group" align="left">
					<label for="">아이디</label> <input type="text" class="form-control"
						id="id" name="id" value>
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
					<button type="button" class="btn btn-primary" id="updateBtn">수정</button>
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