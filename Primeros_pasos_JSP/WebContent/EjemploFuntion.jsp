<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="datos" value="Paco,Gomez,Programador,21000"/>

<c:set var="datosArray" value="${fn:split(datos, ',')}"/>

	

<input type="text" value="${datosArray[0]}"><br/>
<input type="text" value="${datosArray[1]}"><br/>
<input type="text" value="${datosArray[2]}"><br/>
<input type="text" value="${datosArray[3]}"><br/>

</body>
</html>