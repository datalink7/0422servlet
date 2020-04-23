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
<h3>사원 목록 출력</h3>
<table>
	<tr bgcolor="#ffffaa">
		<th width="60">번호</th>
		<th width="100">사원명</th>
		<th width="100">직위</th>
		<th width="120">급여</th>
		<th width="150">입사일</th>
	</tr>
	<c:forEach var="dto" items="${list }" varStatus="i"><!-- requestScope.(앞에생략)list -->
		<tr>
			<td align="center">${i.count }</td>
			<td align="center">${dto.name }</td>
			<td align="center">${dto.jikwi }</td>
			<td align="center">
				<fmt:formatNumber value="${dto.pay }" pattern="#,##0"/>
			</td>
			<td align="center">
				<fmt:formatDate value="${dto.ipsaday }" pattern="yyyy년 MM월 dd일"/>
			</td>
		</tr>
	</c:forEach> 
</table>
</body>
</html>