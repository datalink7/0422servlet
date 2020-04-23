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
<body>
<h3>startsWith : 특정 문자열로 시작하면 true</h3>
<c:set var="msg1" value="   Have a Nice Day   "/>
msg1 : ${msg1 }<br>
length : ${fn:length(msg1) } 글자입니다<br>

<h3>앞뒤 공백을 제거한 후 다시 변수에 저장하기</h3>
<c:set var="msg2" value="${fn:trim(msg1) }"/>
length : ${fn:length(msg2) } 글자입니다<br>

<h3>대문자와 소문자로만 출력하기</h3>
${fn:toUpperCase(msg2) }<br>
${fn:toLowerCase(msg2) }<br>

<h3>startsWith : 특정 문자열로 시작하면 true</h3>
${fn:startsWith(msg2,"Have") }<br>
${fn:startsWith(msg2,"Good") }<br>

<h3>endsWith : 특정 문자열로 끝나면 true</h3>
${fn:endsWith(msg2,"Day") }<br>
${fn:endsWith(msg2,"Good") }<br>

<h3>contains(변수, "문자열") : 변수가 문자열을 포함하고 있으면 true</h3>
${fn:contains(msg2,"Nice") }<br>
${fn:contains(msg2,"Good") }<br>

<h3>replace(변수, "문자열1", "문자열2") : 변수가 문자열을 포함하고 있으면 true</h3>
${fn:replace(msg2,"a","*") }<br>

<h3>substring(변수, "m", "n") : m~(n-1) 까지 추출</h3>
${fn:substring(msg2,7,11) }<br> <!-- Nice만 추출 -->
</body>
</html>