<html>

	<body>
	
		<h2></h2>
		
		Petici�n datos del navegador: <%= request.getHeader("User-Agent") %>
		
		<br/><br/>
		
		Peticion idioma utilizado: <%= request.getLocale() %>
	
	</body>

</html>