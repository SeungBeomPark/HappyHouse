<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="userinfo" value="${sessionScope.userInfo}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>HappyHouse QnA</title>
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
	</head>
	<body>
	
	<%@ include file="/WEB-INF/views/header.jsp"%>
	<div class="container">
	  <div class="col" align="center">		     
		  <table align="center" class="table table-bordered">
			<tr><td colspan="2" class="caption" align="center">QnA 상세</td></tr>
			<tr><td colspan="2" class="bpadding"> &nbsp;</td></tr>
			<tr>
				<td class="tbasic">번호 </td>
				<td class="tbasic">${qna.qna_no}</td>
			</tr>	
			<tr>
				<td class="tbasic">제목 </td>
				<td class="tbasic">${qna.qna_title}</td>
			</tr>		
			<tr>
				<td class="tbasic">질문 내용 </td>
				<td class="tbasic">${qna.qna_content}</td>
			</tr>	

			<tr><td colspan="2" align="center" class="tspacial tfoot">
			<a href="listQnA.do">QnA 목록</a>
			<c:if test="${userInfo.id == qna.qna_userid}">
				<a href="removeQnA.do?qna_no=${qna.qna_no}">삭제</a>
				<a href="updateQnAForm.do?qna_no=${qna.qna_no}">수정</a>
			</c:if>
			 </td></tr>
		</table>
		  
	  </div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
	</body>
</html>