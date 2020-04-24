<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차 구입 성공</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

</head>
<body>
 <div style="margin-left: 200px; font-size: 17pt;width:300px;"
  class="alert alert-danger">
 	<image src="../image/s5.JPG" align="left" width="100">
 	<b>${name} 님 ${carname} 구입을 축하합니다</b> 	
 	<hr>
 	<button type="button" class="btn btn-danger btn-sm"
 	style="width: 100px;" onclick="location.href='list'">목록</button> 	
 </div>
</body>
</html>












