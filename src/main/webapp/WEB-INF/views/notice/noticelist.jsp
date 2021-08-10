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
	</head>
	<body>	
	<%@ include file="/WEB-INF/views/header.jsp"%>	
	
	<div class="container">
	<h2 align="center">HappyHouse 공지사항</h2>
	  <div class="col" align="center">
		  <c:if test="${userInfo.id == 'admin'}">
		  	<p align="right"><a href="insertNoticeForm.do">공지사항 등록</a></p>
		  </c:if>
		  <c:if test="${lists.size() != 0}">
		  	<c:forEach var="list" items="${lists}">
			  <table class="table table-active" align="center">
			    <thead>
					<tr><td width="150">번호</td>
						<td width="150">제목</td>
					</tr>
				</thead>
			    <tbody>
			      <tr>
			        <td width="150"><a href="searchNotice.do?no=${list.no}">${list.no}</a></td>
					<td width="150">${list.title}</td>
			      </tr>
			      
			    </tbody>
			  </table>
		  	</c:forEach>
		  </c:if>
		  
		  <c:if test="${lists.size() == 0}">
		  <table class="table table-active">
		    <tbody>
		      <tr class="table-info" align="center">
		        <td>공지사항 목록을 조회할 수 없습니다.</td>
		      </tr>
		    </tbody>
		  </table>
		  </c:if>	  
		  
	  </div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
	</body>
</html>