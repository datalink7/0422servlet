<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	td,tr,th{
		border: 1px solid gray;
	}
</style>
</head>
<body>
<table style="width: 100%;">
	<caption>구구단</caption>
	<tr>
		<c:forEach var="dan" begin="2" end="9" step="1">
			<th>${dan }단</th>
		</c:forEach>
	</tr>
	<c:forEach var="a" begin="1" end="9" step="1">
		<tr>
			<c:forEach var="dan" begin="2" end="9">
				<td align="center">
					${dan }x${a }=${dan*a }
				</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</tr>
</table>
</body>
</html>