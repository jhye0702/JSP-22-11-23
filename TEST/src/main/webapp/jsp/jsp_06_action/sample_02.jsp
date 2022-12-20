<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Title</title>
</head>
<body>
	<% 
		int num1 = 5;
	%>
	<jsp:include page = "sample_02_include.jsp" flush ="false" />
	<br>
	<% 
		out.println(num1 * num2);
	%>
</body>
</html>

<%-- 에러가 뜨는 게 정상입니다. 
실행은 단독으로 되도록 해놓고..... 어쩌구 때문에?? 
차이점 알기!!! 

jsp:include page는 하던 작업을 멈추고 page에 적은 ~.jsp로 이동!
~.jsp 안에 모든 내용이 있어야함.

--%>