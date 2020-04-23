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
<body>
<c:set var="hp" value="010-1234-5678"/>
<c:set var="colors" value="red,green,blue,pink,orange"/>
hp : ${hp }<br>
colors : ${colors }<br>

<h3>hp분리해서 출력하기</h3>
<c:forTokens var="h" items="${hp }" delims="-" varStatus="i">
	${i.count } : ${h }<br>
</c:forTokens>
<h3>colors 분리해서 출력하기</h3>
<c:forTokens var="a" items="${colors }" delims="," varStatus="i">
	<b style="color: ${a }">${i.count } : ${a }</b><br>
	<%-- ${i.count } : <b style="color: ${a }">${a }</b><br> --%>
</c:forTokens>
</body>
</html>