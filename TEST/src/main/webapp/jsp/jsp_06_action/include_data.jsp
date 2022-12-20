<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include</title>
</head>
<body>
	<p><%for(int i = 0; i<10; i++){
			out.println("5 * " + i + " = " + i*5  + "<br>");	
		}
		%>
</body>
</html>