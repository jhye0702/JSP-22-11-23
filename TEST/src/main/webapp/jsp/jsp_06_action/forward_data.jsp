<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
	<%
		String strNum = request.getParameter("num");
		int intNum = Integer.parseInt(strNum); // num 을 형변환해주는 것
	%>
	
	
	<%
		for (int i = 1; i < 10; i++) {
			out.print(intNum + " * " + i + " = " + (intNum*i) + "<br>");
		}
	%>
</body>
</html>