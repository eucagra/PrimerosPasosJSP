<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<%@ page import="java.util.*, java.sql.*, pildorasinformaticas.com.jsptags.Empleado" %>

	<%
	
		ArrayList<Empleado> datos = new ArrayList<>();
	
		Class.forName("com.mysql.jdbc.Driver");
	
	try{
		
		Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","root");
		
		Statement miStatement = miConexion.createStatement();
		
		String instruccionSql="SELECT * FROM EMPLEADOS";
		
		ResultSet rs=miStatement.executeQuery(instruccionSql);
		
		while(rs.next()){
			
			datos.add(new Empleado(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDouble(4)));
			
		}
		
		rs.close();
		
		miConexion.close();
		
	}catch(Exception e){
		
		out.println("Ha habido un error");
		
	}
	
	pageContext.setAttribute("losEmpleados", datos);
	
	%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

	.cabecera{
	
		font-weight:bold;
		
	
	}

</style>

</head>
<body>

<table border="1">

<tr class="cabecera"><td>Nombre</td><td>Apellido</td><td>Puesto</td><td>Salario</td></tr>

<c:forEach var="EmpTemp" items="${losEmpleados}">

<tr>

	<td>${EmpTemp.nombre}</td> <td>${EmpTemp.apellido}</td> <td>${EmpTemp.puesto}</td>  
	<td>
	<c:if test="${EmpTemp.salario < 20000 }">
	
		${ EmpTemp.salario + 3000 }
	
	</c:if>
	<c:if test="${EmpTemp.salario >= 20000 }">
	
		${ EmpTemp.salario}
	
	</c:if>
	</td>
</tr>


</c:forEach>


</table>


</body>
</html>