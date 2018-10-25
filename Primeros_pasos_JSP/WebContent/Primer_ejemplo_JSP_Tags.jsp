<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%

	String alumnos[]={"Antonio", "Sandra", "Maria", "Paco"};

	pageContext.setAttribute("losAlumnos", alumnos);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="tempAlumnos" items="${losAlumnos}">
	
		${tempAlumnos} <br/>
	
	</c:forEach>

</body>
</html>