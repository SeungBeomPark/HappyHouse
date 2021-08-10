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
			tr th{
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
		<c:if test="${userInfo != null}">
		<div class="container" >
			<div style="margin-bottom: 20px">
				<form name="searchform" method="get" action="/ssafy/preferapt">
					<input type="hidden" name="act" id="act" value="search">
					<input type="hidden" name="pg" id="pg" value="1">
						<div class="dropdown">
							<select id="mystatus" value="난방방식" type="button"
								data-toggle="dropdown" name="난방방식">
								<option value="">난방방식</option>
								<option value="개별">개별난방</option>
								<option value="중앙">중앙난방</option>
							</select>
						</div>
						<div class="dropdown">						
							<select id="mystatus" value="난방연료" type="button"
								data-toggle="dropdown" name="난방연료" aria-expanded="true">
								<option value="">난방연료</option>
								<option value="열병합">열병합</option>
								<option value="도시가스">도시가스</option>
							</select>
						</div>
						<div class="dropdown">						
							<select id="mystatus" value="현관구조" type="button"
								data-toggle="dropdown" name="현관구조" aria-expanded="true">
								<option value="">현관구조</option>
								<option value="복도식">복도식</option>
								<option value="계단식">계단식</option>
							</select>
						</div>
						<div class="dropdown">						
							<select id="mystatus" value="평수" type="button"
								data-toggle="dropdown" name="평수" aria-expanded="true">
								<option value="">평 수</option>		
								<option value="10">~ 10</option>
								<option value="15">11 ~ 15</option>
								<option value="20">16 ~ 20</option>
								<option value="25">21 ~ 25</option>
								<option value="30">26 ~ 30</option>
								<option value="35">31 ~ 35</option>
								<option value="40">36 ~ 40</option>
								<option value="45">41 ~ 45</option>
							
							</select>
						</div>
						<div class="dropdown">						
							<select id="mystatus" value="방개수" type="button"
								data-toggle="dropdown" name="방개수" aria-expanded="true">
								<option value="">방 개수</option>		
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</div>
						<div class="dropdown">						
							<select id="mystatus" value="화장실개수" type="button"
								data-toggle="dropdown" name="화장실개수" aria-expanded="true">
								<option value="">화장실 개수</option>
								<option value="1">1</option>
								<option value="2">2</option>
							</select>
						</div>
	
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						
						<input type="checkbox" id="jb-checkbox-1" name="housetype"
							 class="custom-control-input" value="1">
						<label class="custom-control-label" for="jb-checkbox-1">구청</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-2" name="housetype"
							value="2"  class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-2">동사무소</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-3" name="housetype"
							value="3"  class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-3">경찰서</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-4" name="housetype"
							value="4" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-4">소방서</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-5" name="housetype"
							value="5" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-5">은행</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-6" name="housetype"
							value="6" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-6">병원</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-7" name="housetype"
							value="7"  class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-7">운동시설</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-8" name="housetype"
							value="8" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-8">쇼핑시설</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-9" name="housetype"
							value="9" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-9">학교</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-10" name="housetype"
							value="10" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-10">공원</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-11" name="housetype"
							value="11" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-11">버스정류장</label>
					</div>
					<div class="custom-control custom-checkbox"
						style="display: inline-block;">
						<input type="checkbox" id="jb-checkbox-12" name="housetype"
							value="12" class="custom-control-input">
						<label class="custom-control-label" for="jb-checkbox-12">지하철</label>
					</div>
					
	
						<div>
							<input type="hidden" name="act" value="search">
							 <input type="text" name="space" value="${space}">					
							</div>
				</form>
			</div>
		</div>
		<strong>거래 내역</strong>
		<c:if test="${aptinfos.size() != 0}">
		<table class="table table-hover">
			<thead>
				<tr align="center">
					<th>id</th>
					<th>아파트 이름</th>
					<th>시도</th>
					<th>동</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${aptInfo}" var="aptinfos">
					<tr>
						<td><a
							href="/ssafy/preferdetail/${aptinfos.id}">
								${aptinfos.id} </a></td>
	
						<td><a
							href="/ssafy/preferdetail/${aptinfos.id}">
								${aptinfos.aptname} </a></td>
	
						<td><a
							href="/ssafy/preferdetail/${aptinfos.id}">
								${aptinfos.sido} </a></td>
	
						<td>${aptinfos.dong}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		</c:if>
		  <c:if test="${aptinfos.size() == 0}">
		  <table class="table table-active">
		    <tbody>
		      <tr class="table-info" align="center">
		        <td>데이터가 존재하지 않습니다.</td>
		      </tr>
		    </tbody>
		  </table>
		  </c:if>
		  
		<%@ include file="/WEB-INF/views/footer.jsp"%>
		</c:if>
		<c:if test="${userInfo == null}">
	   		<%@ include file="/WEB-INF/views/user/login.jsp"%>
		</c:if>
			
	</body>
</html>