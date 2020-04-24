<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차 구입 고객 리스트</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
</head>
<body>
<div style="margin-left: 500px;">
	<button type="button" class="btn btn-md btn-info"
	onclick="location.href='addform'">고객 추가</button>
</div>
<div style="margin-left: 200px;">
  <table class="table table-bordered" style="width: 400px;">
  	<caption><b>고객 리스트</b></caption>
  	<tr bgcolor="pink">
  		<th style="width: 60px;">번호</th>
  		<th style="width: 80px;">고객명</th>
  		<th style="width: 120px;">구입일</th>  		
  	</tr>
  	<c:if test="${totalCount==0}">
  		<tr>
  			<td colspan="3" align="center">
  				<b>등록된 고객님이 없습니다</b>
  			</td>
  		</tr>
  	</c:if>
  	<c:if test="${totalCount>0}">
  		<c:forEach var="dto" items="${list}">
  			<tr>
  				<td align="center">
  					${no}
  					<c:set var="no" value="${no-1}"/>
  				</td>
  				<td>
  					<a href="detail?num=${dto.num}&pageNum=${currentPage}"
  					style="cursor: pointer;color: black;">${dto.name}</a>
  				</td>
  				<td align="center">
  					${dto.carguipday}
  				</td>
  			</tr>  			
  		</c:forEach>
  	</c:if>
  </table>
</div>
<div style="margin-left: 200px;text-align: center;width: 400px;">
  <c:if test="${totalCount>0}">
  	<ul class="pagination">
  	<!-- 이전 -->
  	<c:if test="${startPage>1}">
  		<li>
  			<a href="list?pageNum=${startPage-1}"
  				 style="color: black;cursor: pointer;">이전</a>
  		</li>
  	</c:if>
  	<c:forEach var="pp" begin="${startPage}" end="${endPage}">
  		<c:if test="${pp==currentPage}">
  			<li>
  				<a href="list?pageNum=${pp}"
  				 style="color: red;font-weight: bold;cursor: pointer;">${pp}</a>
  			</li>
  		</c:if>
  		<c:if test="${pp!=currentPage}">
  			<li>
  				<a href="list?pageNum=${pp}"
  				 style="color: black;cursor: pointer;">${pp}</a>
  			</li>
  		</c:if>
  	</c:forEach>
  	<!-- 다음 -->
  	<c:if test="${endPage<totalPage}">
  		<li>
  			<a href="list?pageNum=${endPage+1}"
  				 style="color: black;cursor: pointer;">다음</a>
  		</li>
  	</c:if>
  	</ul>
  </c:if>	
</div>
</body>
</html>















