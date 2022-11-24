<%@ page import="java.util.Enumeration" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 연습문제 1 Process</title>
</head>
<body>

	
	<%
		request.setCharacterEncoding("utf-8");
	
		Enumeration paramNames = request.getParameterNames();
		while (paramNames.hasMoreElements()) {
			StringBuffer info = new StringBuffer((String) paramNames.nextElement());
			out.print("<b>" + info + "</b>" + " : " + "\n");
			
			String infoValue = request.getParameter(info.toString());
			out.println(infoValue + "<br>");
		}
		
	%>
	
</body>
</html>