<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri ="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><sec:authentication property="principal"/></h3>
<h3><sec:authentication property="principal" var="userName"/></h3>
<h3><sec:authentication property="principal" var="mamber.userId"/></h3>
</body>
</html>