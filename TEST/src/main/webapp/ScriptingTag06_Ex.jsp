<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%-- 문제 1. 선언문 태그를 이용하여 다음 조건에 맞게 JSP 애플리케이션을 만들고 실행결과를 확인하시오 --%>
	<%-- 1) 선언문 태그에 문자형 전역변수를 선언하여 'Hello, Java Server Pages'를 저장
		 2) 문자형 변수 값을 반환하는 전역 메서드 getString()을 작성
		 3) getString() 메서드를 호출하여 문자형 변수 값을 출력 --%>
	<%!
		String greet = "Hello, Java Server Pages";
	%>
	<%!
		String getString(){
			return greet;
		}
	%>
	
	<%
		out.println(getString());
	%>
	
	<%-- 이게 더 간단해서 이걸 더 많이 사용하는 편! --%> 
	<%= getString() %>
</body>
</html>