<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forword_data</title>
</head>
<body>
	<h4>param 액션 태그를 이용해 "구구단 출력하기"</h4>
	<jsp:forward page="forward_data.jsp">
		<jsp:param value="5" name = "num"/>
	</jsp:forward>
</body>
</html>