<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%-- 선언문 태그에 전역 변수 사용하기 --%>
	<%! 
		/* 변수 data에 50 저장. 선언문 태그를 작성 */
		int data = 50;
	%>
	
	Page Count is
	<%
		// 전역 변수 1 증가. 새로고침을 하면 숫자가 증가
		out.println("Value of the variable is: " + data); 
	%>
</body>
</html>