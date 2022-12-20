<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<% 
		out.println("오늘의 날짜 및 시각 " + "<br>");
		out.println(java.util.Calendar.getInstance().getTime());
		
		// 위와 같이 데이터 타입을 javautil.Calendar 로 today에 따로 저장하지 않고도 바로 부를 수 있다.
		// 아래의 경우, 오늘의 날짜 및 시각을 여러번 사용하고자 할 때 많이 쓴다.
		
		out.println("<br>" + "오늘의 날짜 및 시각" + "<br>");
		java.util.Calendar today = java.util.Calendar.getInstance();
		out.println(today.getTime());
		
	%>
</body>
</html>