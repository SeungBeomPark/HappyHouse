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
			h1, h2, p {
	  			font-family: "Nanum Gothic", sans-serif;
	  			font-size: 18px;
		  	}
		  	tr, td{
	  			font-family: "Nanum Gothic", sans-serif;
	  			font-size: 18px;
		  	}
		</style>
	</head>
	<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>	
	<div class="container">
	  <div class="col" align="center">    
		  <table align="center" class="table table-bordered">
		  	<tr><td colspan="2" class="caption" align="center">공지사항 상세</td></tr>
			<tr><td colspan="2" class="bpadding"> &nbsp;</td></tr>
			<tr>
				<td class="tbasic">번호</td>
				<td class="tbasic">${notice.no}</td>
			</tr>	
			<tr>
				<td class="tbasic">제목</td>
				<td class="tbasic">${notice.title}</td>
			</tr>		
			<tr>
				<td class="tbasic">내용</td>
				<td class="tbasic">${notice.content}</td>
			</tr>	

			<tr><td colspan="2" align="center" class="tspacial tfoot">
			<a href="listNotice.do">공지사항 목록</a>
			<c:if test="${userInfo.id == 'admin'}">
				<a href="removeNotice.do?no=${notice.no}">삭제</a>
				<a href="updateNoticeForm.do?no=${notice.no}">수정</a>
			</c:if>
			 </td></tr>
		</table>
		  
	  </div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
	</body>
</html>