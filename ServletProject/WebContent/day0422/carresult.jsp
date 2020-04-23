<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 tr,td,th{
 	border: 1px solid gray;
 }
</style>
</head>
<body>
<h3>자동차 목록 출력</h3>
<table>
	<tr bgcolor="#ffffaa">
		<th width="60">번호</th>
		<th width="100">차이름</th>
		<th width="150">차가격</th>
		<th width="150">구입일</th>
		<th width="100">차색상</th>
	</tr>
	<c:forEach var="car" items="${list }" varStatus="i">
		<tr>
			<td align="center">${i.count }</td>
			<td align="center">${car.carName }</td>
			<td align="center">
				<fmt:formatNumber value="${car.carPrice }" type="currency"/>
			</td>
			<td align="center">
				<fmt:formatDate value="${car.carDay }" pattern="yyyy년 MM월 dd일"/>
			</td>
			<td bgcolor="${car.carColor }" align="center">
				${car.carColor }
			</td>
	</c:forEach>
</table>
</body>
</html>