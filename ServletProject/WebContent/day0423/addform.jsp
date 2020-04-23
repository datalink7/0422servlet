<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차 구입 고객 리스트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div style="margin-left: 200px;">
	<form action="insert" method="post">
		<table style="width: 400px;" class="table table-bordered">
			<caption><b>고객 추가</b></caption>
			<tr>
				<th style="width: 100px; background-color: pink;">
				고객명</th>
				<td>
					<input type="text" name="name" style="width: 120px;" class="form-control input-sm" required="required" >
				</td>
			</tr>
			<tr>
				<th style="width: 100px; background-color: pink;">
				차이름</th>
				<td>
					<input type="text" name="carname" style="width: 120px;" class="form-control input-sm" required="required" >
				</td>
			</tr>
			<tr>
				<th style="width: 100px; background-color: pink;">
				가 격</th>
				<td>
					<input type="text" name="carprice" style="width: 120px;" class="form-control input-sm" required="required" >
				</td>
			</tr>
			<tr>
				<th style="width: 100px; background-color: pink;">
				차색상</th>
				<td>
					<input type="color" name="carcolor" style="width: 120px;" 
					class="form-control input-sm" required="required" value="#ffffcc">
				</td>
			</tr>
			<tr>
				<th style="width: 100px; background-color: pink;">
				구입일</th>
				<td>
					<input type="date" name="carguipday" style="width: 180px;" class="form-control input-sm" required="required" >
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success btn-sm"
					style="width: 100px;">DB에 추가</button>
					
					<button type="button" class="btn btn-success btn-sm"
					style="width: 100px;" onclick="location.href='list'">목록</button>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>