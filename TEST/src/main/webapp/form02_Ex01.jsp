<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 연습문제 1</title>
</head>
<body>
	<%-- 문제
		1. form태그를 이용하여 다음 조건에 맞게 JSP 애플리케이션을 만들고 실행 결과를 확인하시오
			1) form01.jsp 파일을 생성합니다
			* input 태그 내에 text유형을 이용하여 이름, 주소, 이메일 항목을 작성합니다.
			* form 태그의 action 속성값은 form01_process.jsp 로 작성합니다.
			
			2) form01_process.jsp 파일을 생성합니다.
			* request 내장 객체의 getParameter()메서드를 이용하여 전송된 요청 파라미터 값을 받습니다.
			* String을 이용하여 전송된 요청 파라미터 값을 저장하여 출력합니다. --%>
			
		<form action="form02_EX01_process.jsp" method="post">
			<p> 이름 : <input type="text" name="name">
			<p> 주소 : <input type="text" name="address">
			<p> 이메일 : <input type="text" name="mail">
			<p> <input type="submit" value="전송">
		</form>
		
		
</body>
</html>