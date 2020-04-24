<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

</head>
<body>
<div style="margin-left: 200px;">
	<form action="update" method="post">
		<table style="width: 400px;" class="table table-bordered">
			<caption><b>고객정보 수정</b></caption>
			<tr>
				<th style="width: 100px;background-color: pink;">
					고객명</th>
				<td>
					<input type="text" name="name" style="width: 120px;"
					class="form-control input-sm" required="required"
					value="${dto.name}">					
				</td>
			</tr>
			<tr>
				<th style="width: 100px;background-color: pink;">
					차이름</th>
				<td>
					<input type="text" name="carname" style="width: 120px;"
					class="form-control input-sm" required="required"
					value="${dto.carname}">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;background-color: pink;">
					가 격</th>
				<td>
					<input type="text" name="carprice" style="width: 120px;"
					class="form-control input-sm" required="required"
					value="${dto.carprice}">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;background-color: pink;">
					차색상</th>
				<td>
					<input type="color" name="carcolor" style="width: 120px;"
					class="form-control input-sm" required="required"
					value="${dto.carcolor}">
				</td>
			</tr>
			<tr>
				<th style="width: 100px;background-color: pink;">
					구입일</th>
				<td>
					<input type="date" name="carguipday" style="width: 180px;"
					class="form-control input-sm" required="required"
					value="${dto.carguipday}">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<!-- hidden -->
					<input type="hidden" name="num" value="${dto.num}">
					<input type="hidden" name="pageNum" value="${pageNum}">					
				    
					<button type="submit" class="btn btn-success btn-sm"
					style="width: 100px;">DB수정</button>
					
					<button type="button" class="btn btn-success btn-sm"
					style="width: 100px;"
					onclick="location.href='list?pageNum=${pageNum}'">목록</button>
				</td>
			</tr>
		</table>	
	</form>
</div>
</body>
</html>












