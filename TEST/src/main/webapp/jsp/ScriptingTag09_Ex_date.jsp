<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 날짜 출력하기</title>
</head>
<body>
	<%-- 문제 2. 스크립틀릿 태그를 이용하여 다음 조건에 맞게
		 JSP 애플리케이션을 만들고 실행결과를 확인하시오 
		 1) 스크립틀릿태그를 이용하여 java.util.Data 형 지역변수에 현재 날짜를 저장.
		 2) 현재 날짜값을 출력. --%>
	Today : 
	<% java.util.Date today = new java.util.Date();
		out.println(today); 
	%>
</body>
</html>