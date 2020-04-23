<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<!-- 4.4	<c:if/>
<c:if/> 는 흔히 보는 조건문이다. 형식은 다음과 같다.
Syntax 1: Body 없는 경우
<c:if test="testCondition"
var="varName" [scope="{page|request|session|application}"]/>

Syntax 2: Body 있는 경우
<c:if test="testCondition"
[var="varName"] [scope="{page|request|session|application}"]>
body content
</c:if>


<c:if/> 에서 나온 결과를 varName 변수에 넣고, 나중에 활용이 가능하다. 변수의 scope는 임의로 지정할 수 있고, 생략될 경우 기본값은 page 이다. 

4.5	<c:choose/>, <c:when/>, <c:otherwise/>
<c:choose/> 태그는 java 의 switch 문과 같지만, 조건에 문자열 비교도 가능하고 쓰임의 범위가 넓다. 또한 <c:if/> 태그에 else 가 없기 때문에 이의 대체 기능도 수행한다.
형식은 다음과 같다.
<c:choose>
body content 
(하나 이상의 <when> 과 하나 이하의 <otherwise> 서브태그)
    <c:when test="조건">
        body content
    </c:when>
    
    <c:otherwise>
        conditional block
    </c:otherwise>
</c:choose> -->
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 변수 선언 -->
<c:set var="name" value="이영자"/>
<c:set var="age" value="23"/>

<!-- 조건문 -->
<c:if test="${age>=20 }">
	<b style="color: blue;">${name } 님은 성인입니다.</b>
</c:if>
<c:if test="${age<20 }">
	<b style="color: red;">${name } 님은 미성년자입니다.</b>
</c:if>
</body>
</html>