<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- core 라이브러리 import -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table,tr,th,td{
		border: 1px solid black;
	}
</style>
</head>
<body>
<!-- jstl 변수 선언 -->
<c:set var="su1" value="7"/>
<c:set var="su2" value="4"/>

<!-- jstl 변수 출력 -->
su1 : <c:out value="${su1 }"/><br>
su2 : ${su2 } <br>	<!-- 출력은 el 태그만 써도 된다. -->
<table>
	<caption><b>JSTL연산자</b></caption>
	<tr>
		<th width="200">\${su1+su2 }</th>
		<td width="300">
			${su1+su2 }
		</td>
	</tr>
	<tr>
		<th width="200">\${su1-su2 }</th>
		<td width="300">
		${su1-su2 }
		</td>
	</tr>
	<tr>
		<th width="200">\${su1*su2 }</th>
		<td width="300">
			${su1*su2 }
		</td>
	</tr>
	<tr>
		<th width="200">\${su1/su2 }</th>
		<td width="300">
			${su1/su2 }
		</td>
	</tr>
	<tr>
		<th width="200">\${su1%su2 }</th>
		<td width="300">
			${su1%su2 }
		</td>
	</tr>
	<tr>
		<th width="200">\${su1 div su2 }</th>
		<td width="300">
			${su1 div su2 }	<!-- / 나누기 -->
		</td>
	</tr>
	<tr>
		<th width="200">\${su1 mod su2 }</th>
		<td width="300">
			${su1 mod su2 } <!-- % 나머지 -->
		</td>
	</tr>
	<tr>
		<th width="200">\${empty su1 }</th>
		<td width="300">
			${empty su1 }	<!-- null 이거나 값이 없으면 true, 값이 있으면 false -->
		</td>
	</tr>
	<tr>
		<th width="200">\${su1 을 1 증가 }</th>
		<td width="300">
			<c:set var="su1" value="${su1+1 }"/>
			${su1}
		</td>
	</tr>
	<tr>
		<th width="200">\${su2 을 1 감소 }</th>
		<td width="300">
			<c:set var="su1" value="${su2-1 }"/>
			${su2}
		</td>
	</tr>
	
</table>
</body>
</html>