<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

</head>
<body>
<div style="margin-left: 200px;width: 400px;">
	<table class="table table-bordered">
		<caption><b>상세 페이지</b></caption>
		<tr>
			<th style="width: 100px;background-color: pink;">고객명</th>
			<td>${dto.name}</td>
		</tr>
		<tr>
			<th style="width: 100px;background-color: pink;">구입차종</th>
			<td>${dto.carname}</td>
		</tr>
		<tr>
			<th style="width: 100px;background-color: pink;">차 가격</th>
			<td>
				<fmt:formatNumber value="${dto.carprice}"
				 pattern="#,##0"/>
			</td>
		</tr>
		<tr>
			<th style="width: 100px;background-color: pink;">차 색상</th>
			<td>
				<div 
				style="width: 70px;height: 70px;background-color: ${dto.carcolor};"></div>
				&nbsp;&nbsp;&nbsp;
				${dto.carcolor}
			</td>
		</tr>
		<tr>
			<th style="width: 100px;background-color: pink;">구입일</th>
			<td>
				${dto.carguipday}
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" class="btn btn-sm btn-info"
				onclick="location.href='addform'"
				style="width: 80px;">고객추가</button>
				
				<button type="button" class="btn btn-sm btn-info"
				onclick="location.href=''"
				style="width: 80px;">수정</button>
				
				<button type="button" class="btn btn-sm btn-info"
				onclick="location.href=''"
				style="width: 80px;">삭제</button>
				
				<button type="button" class="btn btn-sm btn-info"
				onclick="location.href='list?pageNum=${pageNum}'"
				style="width: 80px;">목록</button>
				
			</td>
		</tr>
	</table>
</div>
</body>
</html>
