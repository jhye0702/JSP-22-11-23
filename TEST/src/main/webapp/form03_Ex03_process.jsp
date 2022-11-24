<%@ page import="java.util.Enumeration" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 연습문제 2</title>
</head>
<body>
	<%--3. 문제
			
			1) form 태그를 이용하여 다음 조건에 맞게 JSP 애플리케이션을 만들고 실행결과를 확인하시오
			* input 태그 내에 check 유형을 이용하여 오렌지, 사과, 바나나 항목을 작성합니다.
			* form 태그의 action 속성 값은 form03_process.jsp 로 작성합니다.
			
			2) form03_process.jsp 파일을 생성합니다.
			* request 내장 객체의 getParameterValues() 메서드를 이용하여 전송된 요청 파라미터 값을 전달받아 출력합니다.
	 --%>
	
	<%
	
		request.setCharacterEncoding("utf-8");
	
		Enumeration paraNames = request.getParameterNames();
		
		//while(paraNames.hasMoreElements()) {
		//	String[] paramValue = request.getParameterValues(name);
		//	if(paramValue != null) {
		//		for (int i =0; i<paramValue.length; i++) {
		//			out.println (" " + paramValue[i]);
		//		}
		//	}
		//}
	
	%>
	
	
</body>
</html>