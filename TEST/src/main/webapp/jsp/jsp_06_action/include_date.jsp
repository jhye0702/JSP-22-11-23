<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html lang = "en">
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<p>오늘의 날짜 및 시각
	<p><%=(new java.util.Date()).toLocaleString() %>
</body>
</html>