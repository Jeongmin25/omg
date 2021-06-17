<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<style type="text/css">
#title{
	font-size: 3em;
	font-family: 'Noto Sans KR';
	color : #4B89DC;
	margin-left: 80px;
}

#searchText{
	width: 400px;
	height: 50px;
	margin-left: 80px;
	border : #4B89DC solid 5px;
	border-radius: 40px;
}

</style>
</head>
<body>
<div class="question">
<b id="title">어떤 집을 구하시나요?</b><br><br>
<input type="text" name="keyword" class="flow search-text" id="searchText" title="검색어 입력">
<button type="button" class="flow btn-search" id="btnSearch">
<span class="glyphicon glyphicon-search search"></span>
</button>
</div>
<hr bgcolor="#4B89DC">
<br>
<button type="button" class="btn btn-info" style="width: 120px;"
		onclick="location.href='addform'">추가</button>
<br>
<table class="table table-bordered" style="width: 800px;">
<tr>
	<th align="center" width="50">번호</th>
	<th align="center" width="130">아파트명</th>
	<th align="center" width="80">시세</th>
	<th align="center" width="80">방 수</th>
	<th align="center" width="150">주소</th>
	<th align="center" width="120">입주일</th>
	<th align="center" width="120">등록일</th>
	<th>관리</th>
</tr>
<c:forEach var="dto" items="${list}" varStatus="i">
<tr align="center">
	<td>${i.count}</td>
	<td>${dto.homename}</td>
	<td>${dto.homeprice}원</td>
	<td>${dto.room}개</td>			
	<td>${dto.homeaddr}</td>
	<td>${dto.ipjooday}</td>
	<td>
	<fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd HH:mm"/>
	</td>
	<td>
	<button type="button" class="btn btn-info" style="width: 120px;"
		onclick="location.href='updateform?num=${dto.num}'">수정</button>
		
	<button type="button" class="btn btn-info" style="width: 120px;"
		onclick="location.href='delete?num=${dto.num}'">삭제</button>
	</td>
</tr>
</c:forEach>
</table>
</body>
</html>