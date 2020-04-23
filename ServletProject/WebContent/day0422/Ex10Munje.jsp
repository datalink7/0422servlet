<%@page import="java.util.List"%>
<%@page import="java.util.Vector"%>
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
</head>
<%
	List<String> names=new Vector<>();
	names.add("강호동");
	names.add("김미자");
	names.add("이영자");
	names.add("유재석");
	names.add("유재순");
	names.add("강부자");
	names.add("이미라");
	names.add("강백호");
	names.add("유재란");
	names.add("강호남");

%>
<body>
<fmt:requestEncoding value="utf-8"/>
<c:set var="data" value="<%=names %>"/>
<form action="Ex10Munje.jsp" method="post">
	<b>검색할 성을 입력하세요.</b>
	<input type="text" name="sung" size="5">
	<input type="submit" value="검색">
</form>
<!-- 성을 입력후 검색을 누르면 해당 성을 가진 사람은 모두 출력
입력안하고 검색 누르면 전체 출력 -->
<c:if test="${empty param.sung }">
	<h3>전체명단 출력</h3>
	<c:forEach var="d" items="${data }" varStatus="i">
	${i.count } : ${d }<br>
	</c:forEach>
</c:if>

<c:if test="${!empty param.sung }">
	<h3>${param.sung } 씨 성을 가진 명단 출력</h3>
	<c:forEach var="d" items="${data }" varStatus="i">
		<c:if test="${fn:startsWith(d,param.sung) }">
			${i.count } : ${d }<br>
		</c:if>
	</c:forEach>
</c:if>
</body>
</html>