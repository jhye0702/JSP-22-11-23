<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%-- 표현문 태그 사용 예 --%>
	<%! 
		int count = 0;	// 전역변수 count를 0으로 초기화
	%>
	
	Page Count is
	<%-- 표현문으로 지역변수 count를 1 증가 시킴 --%>
	<%= ++count %>
</body>
</html>