<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="userinfo" value="${sessionScope.userInfo}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>HappyHouse 공지사항</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
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
		<script type="text/javascript">
			 window.onload = function(){
				var btn = document.getElementById("insert");
				btn.addEventListener('click', function(){
					var title = document.getElementById("title");
					var content = document.getElementById("content");
	
					if(title.value == ''){
						alert('제목을 입력하세요')
						title.focus();
						return false;
					}
					if(content.value == ''){
						alert('내용을 입력하세요')
						content.focus();
						return false;
					}
	
					var frm = document.getElementById("insertForm");
					frm.submit();
				})
			}
		</script>
	</head>
	<body>
	
	<%@ include file="/WEB-INF/views/header.jsp"%>
	<div class="container">
	  <div class="col" align="center">
		  <h2>HappyHouse 공지사항 등록</h2>
		  <form id="insertForm" method="post" action="insertNotice.do">
		  <div class="form-group">
		  	<label for="title" class="inputtitle">제목</label>
			<input type="text" name="title" id="title">
		  </div>
		  <div class="form-group">
		  	<label for="content" class="inputtitle">내용</label>
			<!--  <input type="text" name="content" id="content"> -->
			<textarea name="content" id="content" rows="10" style="width: 100%;"></textarea>
		  </div>
		 </form>
		 <button id="insert" class="btn btn-primary">공지사항 등록</button>
		 <button id="reset" class="btn btn-primary">초기화</button>	  
	  </div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
	</body>
</html>