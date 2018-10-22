<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	String nombre=request.getParameter("nombre");

	String apellido=request.getParameter("apellido");

	String usuario=request.getParameter("usuario");

	String contra=request.getParameter("contra");

	String pais=request.getParameter("pais");

	String tecno=request.getParameter("tecnologias");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
	
		Connection miConexion= DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "root");
	
		Statement miStatement = miConexion.createStatement();
		
		String instruccionSql="INSERT INTO USUARIOS (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES ('" + nombre + " ','" + apellido + " ','" + usuario + " ','" + contra + " ','" + pais + " ','" + tecno + " ')";
		
		miStatement.executeUpdate(instruccionSql);
		
		out.println("Logged successfully");
	
	}catch(Exception e){
		out.println("Se ha producido un error.");
	}
	
%>

</body>
</html>