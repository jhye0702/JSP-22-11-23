<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form04 process</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	// String id = request.getParameterValues("id")[0]; //-> 이런 식도 되긴 됩니다!
	String Passwd = request.getParameter("Passwd");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String sex = request.getParameter("sex");
	String hobby1 = request.getParameter("hobby1");
	String hobby2 = request.getParameter("hobby2");
	String hobby3 = request.getParameter("hobby3");
	String comment = request.getParameter("comment");
	%>
	
	<p> 아이디 : <%= id %>
	<p> 비밀번호 : <%= Passwd %>
	<p> 이름 : <%= name %>
	<p> 연락처 : <%= phone1 %> - <%= phone2 %> - <%= phone3 %> 
	<p> 성별 : <%= sex %>
	<p> 취미 : <%= hobby1 %> <%= hobby2 %> <%= hobby3 %>
	<p> 가입인사 : <%= comment %>
</body>
</html>