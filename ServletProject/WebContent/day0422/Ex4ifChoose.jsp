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
<!-- jstl 에서 한글 엔코딩하는 방법 -->
<fmt:requestEncoding value="utf-8"/>
<h2>입력폼</h2>
<form action="Ex4ifChoose.jsp" method="post">
	<h3>여행가고 싶은 나라를 선택하세요.</h3>
	<select name="nara" style="width: 100px;">
		<option value="괌">괌</option>
		<option value="미국">미국</option>
		<option value="캐나다">캐나다</option>
		<option value="하와이">하와이</option>
		<option value="프랑스">프랑스</option>
	</select>
	<br>
	이름입력 : <input type="text" name="name" size="8">
	<br>
	나이입력 : <input type="text" name="age" size="5">
	<br><br>
	<button type="submit">서버전송</button>
</form>
<!-- 이름을 입력해서 전송이 된다. -->
<c:if test="${!empty param.name }">
	<hr width="500" align="left" size="5">
	이름 : ${param.name }<br>
	나이 : ${param.age }<br>
	가고싶은 나라: ${param.nara }<br>
</c:if>
<hr>
${param.nara } 는
<c:choose>
	<c:when test="${param.nara=='괌' }">
		<b style="color: magenta;">최고의 휴양지 입니다.</b>
	</c:when>
	<c:when test="${param.nara=='미국' }">
		<b style="color: cyan;">트럼프가 있습니다.</b>
	</c:when>
	<c:when test="${param.nara=='캐나다' }">
		<b style="color: coral;">꼭 가보고 싶습니다.</b>
	</c:when>
	<c:when test="${param.nara=='하와이' }">
		<b style="color: gray;">어떤 나라입니까.</b>
	</c:when>
	<c:when test="${param.nara=='프랑스' }">
		<b style="color: blue;">에펠탑 보고싶어요.</b>
	</c:when>
	<c:otherwise>
		<b style="color: red";>모르는 나라입니다.</b>
	</c:otherwise>
</c:choose>
<hr>
<!--  choose 이용해서 10~19세는 xx님은 혈기왕성한 10대 입니다... 40대까지 쓰고 나머지는 갈 날이 멀지 않았습니다. -->
${param.name } 는(은)
<c:choose>
	<c:when test="${param.age>=10 and param.age<20 }">
		<b>혈기 왕성한 10대입니다.</b>
	</c:when>
	<c:when test="${param.age>=20 and param.age<30 }">
		<b>술에 빠져 살고 있는 20대입니다.</b>
	</c:when>
	<c:when test="${param.age>=30 and param.age<40 }">
		<b>밤새 놀고 싶어도 놀수 없는 30대입니다.</b>
	</c:when>
	<c:when test="${param.age>=40 and param.age<50 }">
		<b>아직 겪어보지 않은 40대 입니다.</b>
	</c:when>
	<c:otherwise>
		<b>갈날이 얼마 남지 않은것 같습니다.</b>
	</c:otherwise>
</c:choose>
</body>
</html>