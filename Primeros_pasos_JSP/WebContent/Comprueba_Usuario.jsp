<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>

<%

	String usuario=request.getParameter("usuario");

	String contra=request.getParameter("contra");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
	
		Connection miConexion= DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "root");
	
		PreparedStatement c_preparada = miConexion.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
		
		c_preparada.setString(1, usuario);
		
		c_preparada.setString(2, contra);
		
		ResultSet miResultSet = c_preparada.executeQuery();
		
		if(miResultSet.absolute(1))
			out.println("Usuario autorizado");
		else
			out.println("No se han encontrado usuarios");
		
	}catch(Exception e){
		out.println("Se ha producido un error.");
	}
	
%>

</body>
</html>