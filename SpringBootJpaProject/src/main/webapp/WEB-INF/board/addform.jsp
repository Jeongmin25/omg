<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
	<form action="insert" method="post">
		<table class="table table-bordered" style="width: 400px;">
			<caption>
				<b>아파트 정보 입력</b>
			</caption>
			<tr>
				<th width="130" bgcolor="#ddd">아파트명</th>
				<td><input type="text" name="homename" class="form-control"
					placeholder="아파트명"></td>
			</tr>
			<tr>
				<th width="130" bgcolor="#ddd">시세</th>
				<td><input type="text" name="homeprice" class="form-control"
					placeholder="시세"></td>
			</tr>
			<tr>
				<th width="130" bgcolor="#ddd">방 수</th>
				<td>
					<select name="room" style="width:50px;">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</td>
			</tr>


			<tr>
				<th width="130" bgcolor="#ddd">주소</th>
				<td><input type="text" class="form-control " name="homeaddr"
					required="required" placeholder="주소"></td>
			</tr>
			<tr>
				<th width="130" bgcolor="#ddd">입주일</th>
				<td><input type="date" name="ipjooday" class="form-control"
					value="2021-01-01"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-info" style="width: 120px;">저장</button>
					<button type="button" class="btn btn-info" style="width: 120px;"
						onclick="location.href='list'">목록</button>
				</td>
			</tr>
		</table>


	</form>
</body>
</html>