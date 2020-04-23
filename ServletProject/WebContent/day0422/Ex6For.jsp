<%@page import="test.data.TestDto"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
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
	List<TestDto> list=new Vector<>();
	list.add(new TestDto("이미연","서울","010-123-3456"));
	list.add(new TestDto("강부자","부산","010-555-6767"));
	list.add(new TestDto("이영자","제주도","010-677-8989"));
	list.add(new TestDto("홍석천","강릉","010-999-8888"));
%>
<body>
<!-- 자바영역의 list를 jstl의 list로 선언 -->
<c:set var="list" value="<%=list %>"/>
<table>
	<tr bgcolor="orange">
		<th width="50">번호</th>
		<th width="100">이름</th>
		<th width="100">주소</th>
		<th width="150">핸드폰</th>
	</tr>
	<c:forEach var="dto" items="${list }" varStatus="i">
		<tr align="center">
			<td>${i.count }</td>
			<td>${dto.name }</td>
			<td>${dto.addr }</td>
			<td>${dto.hp }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>