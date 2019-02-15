<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스터디다모여</title>
</head>
<body>
	<h1>접근제한 페이지</h1>
	<h2><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage() }"/></h2>
	<h2><c:out value="${msg}"/></h2>
</body>
</html>