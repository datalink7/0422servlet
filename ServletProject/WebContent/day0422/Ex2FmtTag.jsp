<%@page import="java.util.Date"%>
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
<h1>숫자나 날짜 포멧 양식 연습</h1>
<!-- 날짜와 숫자 연습용 변수 선언 -->
<c:set var="num1" value="2.456789"/>
<c:set var="money1" value="5674567"/>
<c:set var="today" value="<%=new Date() %>"/>
<h2>선언한 변수 출력</h2>
num1=${num1 }<br>
money1=${money1 }<br>
today=${today }<br>
<hr>
<h3>num1 숫자를 퍼센트로 변환 (곱하기 100 하고 % 붙임)</h3>
<fmt:formatNumber type="percent" value="${num1 }"/>

<h3>money1 숫자를 화폐단위로 표현</h3>
<%-- <fmt:setLocale value="ko_KR"/> 화폐단위 로케일 변경 --%>
<fmt:formatNumber type="currency" value="${money1 }"/>

<h3>pattern 을 이용해서 원하는대로 출력하기</h3>
<fmt:formatNumber value="${num1 }" pattern="0.00"/><br>

<c:set var="num2" value="3.4"/>
<!-- # 은 값이 없을 경우 출력안함, 0은 값이 없을경우 0 출력 -->
<fmt:formatNumber value="${num2 }" pattern="0.00"/><br>
<fmt:formatNumber value="${num2 }" pattern="0.##"/><br>
<fmt:formatNumber type="currency" value="${money1 }" pattern="#,##0"/><br>	<!-- 타입이랑 패턴은 같이 적용 안되는듯? -->
<hr>
<fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm"/><br>
<fmt:formatDate value="${today }" pattern="yyyy-MM-dd (a)hh:mm"/><br>
<fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm EEE"/><br>
<fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm EEEE"/><br>
<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일 HH시 mm분"/><br>

</body>
</html>