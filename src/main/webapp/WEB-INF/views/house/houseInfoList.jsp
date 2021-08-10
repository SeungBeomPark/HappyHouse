<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="userinfo" value="${sessionScope.userInfo}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>아파트 거래 내역</title>
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
			integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
			crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
		<style>
			div, h1, h2, p {
			  	font-family: "Nanum Gothic", sans-serif;
			  	font-size: 18px;
			}
			tr, th, td{
				font-family: "Nanum Gothic", sans-serif;
			  	font-size: 18px;
			}
		</style>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
			integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
			integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
			crossorigin="anonymous"></script>
		<script type="text/javascript">
			function login() {
				if(document.getElementById("id").value == "") {
					alert("아이디 입력!!!");
					return;
				} else if(document.getElementById("password").value == "") {
					alert("비밀번호 입력!!!");
					return;
				} else {
					document.getElementById("loginform").action = "/ssafy/login";
					document.getElementById("loginform").submit();
				}
			}
			
			function searchArticle() {
				document.getElementById("searchform").action = "detailList.do";
				document.getElementById("searchform").submit();
			}
			function pageMove(pg) { 
				document.getElementById("pg").value=pg;
				document.getElementById("pageform").action = "/ssafy";
				document.getElementById("pageform").submit();
			}
		</script>
	</head>
	<body>
		<%@ include file="/WEB-INF/views/header.jsp"%>
		<form name="pageform" id="pageform" method="GET" action="">
			<input type="hidden" name="act" id="act" value="search">
			<input type="hidden" name="pg" id="pg" value="">
			<input type="hidden" name="search" id="search" value="${search}">
			<input type="hidden" name="word" id="word" value="${word}">
		</form>
		<div class="container" style="text-align: center" >
			<div style="margin-bottom: 20px">
				<form name="searchform" method="get" action="/ssafy/search">
					<input type="hidden" name="act" id="act" value="search">
					<input type="hidden" name="pg" id="pg" value="1">
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-1" name="housetype"
							checked="checked" class="custom-control-input" value="0">
						<label class="custom-control-label" for="jb-checkbox-1">아파트
							매매</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-2" name="housetype"
							value="1" checked="checked" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-2">아파트
							전월세</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-3" name="housetype"
							value="2" checked="checked" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-3">다세대,주택
							매매</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-4" name="housetype"
							value="3" checked="checked" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-4">다세대,주택
							전월세</label>
					</div>
					<div>
						<div class="dropdown">
							
							<select id="mystatus" value="${search}" type="button"
								data-toggle="dropdown" name="search" aria-expanded="true">
			 					
								<option>${search}</option>
		
								<option value="dong">동 이름</option>
								<option value="AptName">아파트 이름</option>
								<option value="price">가격</option>
	
							</select>
						</div>
						<div>
							<input type="hidden" name="act" value="search">
							 <input type="text" name="word" value="${word}">
							<button type="button" onclick="javascript:searchArticle();">검색</button>
							
							</div>
							
					</div>
				</form>
			</div>
		</div>
		<strong>거래 내역</strong>
		<c:if test="${houseinfos.size() != 0}">
		<table class="table table-hover">
			<thead>
				<tr align="center">
					<th>번호</th>
					<th>동</th>
					<th>아파트 이름</th>
					<th>거래 금액</th>
					<th>거래 종류</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${houseinfos}" var="houseInfo">
					<tr>
						<td><a
							href="/ssafy/detail/${houseInfo.no}">
								${houseInfo.no} </a></td>
	
						<td><a
							href="/ssafy/detail/${houseInfo.no}">
								${houseInfo.dong} </a></td>
	
						<td><a
							href="/ssafy/detail/${houseInfo.no}">
								${houseInfo.aptName} </a></td>
	
						<td>${houseInfo.dealAmount}</td>
						
	
						<td>${houseInfo.type}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		</c:if>
		  <c:if test="${houseinfos.size() == 0}">
			  <table class="table table-active">
			    <tbody>
			      <tr class="table-info" align="center">
			        <td>데이터가 존재하지 않습니다.</td>
			      </tr>
			    </tbody>
			  </table>
		  </c:if>
	
		<c:if test="${userInfo == null}">
	   			<%@ include file="/WEB-INF/views/user/login.jsp"%>
		</c:if>
			
	</body>
</html>