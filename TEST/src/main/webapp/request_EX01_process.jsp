<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 전송받는 메서드</title>
</head>
<body>
	 <%
	 	String info = request.getQueryString();
	 %>
	 <p> 전송된 요청 파라미터 : <b><%= info %></b>
</body>
</html>