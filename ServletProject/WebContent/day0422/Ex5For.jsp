<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String []str={"red","orange","pink","cyan","blue","green"};
%>
<body>
<!-- 자바영역의 변수를 jstl 변수에 넣으려면? -->
<c:set var="msg" value="<%=str %>"/>
<!-- 반복문 -->
<h1>전체 데이터 가져오기</h1>
<table>
	<caption><b>str 변수 출력하기</b></caption>
	<tr>
		<th width="100">i.count</th>
		<th width="100">i.index</th>
		<th width="100">msg</th>
	</tr>
	<c:forEach var="a" items="${msg }" varStatus="i">
		<tr align="center">
			<td>${i.count }</td>
			<td>${i.index }</td>
			<td bgcolor="${a }">${a }</td>
			
		</tr>
	</c:forEach>
</table>
<hr>
<h1>일부 데이터 가져오기</h1>
<table>
	<caption><b>str 변수 일부 출력하기</b></caption>
	<tr>
		<th width="100">i.count</th>
		<th width="100">i.index</th>
		<th width="100">msg</th>
	</tr>
	<!-- 일부를 가지고 올때 index 기준으로 1~3번까지 출력 -->
	<c:forEach var="a" items="${msg }" begin="1" end="3" varStatus="i">
		<tr align="center">
			<td>${i.count }</td>
			<td>${i.index }</td>
			<td bgcolor="${a }">${a }</td>
			
		</tr>
	</c:forEach>
</table>

</body>
</html>