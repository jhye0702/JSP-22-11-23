<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuGuDan useBean</title>
</head>
<body>
	<jsp:useBean id="gugudan" class="user.GuGuDan">
	<p>자바 빈즈 GuGudan을 생성하여 useBean 액션태그로 구구단 출력하기<br></p>
	<%
		int n = 5;
	
		for (int i= 1; i<10; i++){
			out.print(n + " * " + i + "= " + gugudan.process(n,i) + "<br>");
		}
	%>
	
	<%--
		for (int i= 1; i<10; i++){
			out.println( gugudan.getNum() + " * " + i + " = " + (i*gugudan.getNum()) + "<br>");
		}
	--%>
	</jsp:useBean>
</body>
</html>