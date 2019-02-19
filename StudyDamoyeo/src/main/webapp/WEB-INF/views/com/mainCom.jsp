<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ page session="false"%> --%>
   <%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
   
<%@include file="include/header.jsp"%>
 
<section class="content">
	<div class="row">
		
		<h3><sec:authentication property="principal"/></h3>
	
	
	</div>
</section>

</div>

<%@include file="include/footer.jsp"%>