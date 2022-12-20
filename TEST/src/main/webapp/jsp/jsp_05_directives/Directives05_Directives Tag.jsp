<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<%--
	page 디렉티브 태그에 표현 언어를 사용할 수 없도록 설정하기
	
	1) 내장 객체 request 변수의 setAttribute() 메서드를 이용하여
		RequestAttribute 변수에 값을 저장하도록 스크립틀릿 태그를 작성.
	2) RequestAttribute 변수에 값을 출력하도록 표현 언어 ${}를 작성
	3) 브라우저에서 확인해서 "request 내장 객체" 란 문자열이 나오는 것을 확인
	4) 현재 JSP 페이지에 표현 언어를 사용할 수 없도록 page 디렉티브 태그의 isELIgnored 속성을 작성
		*** 만약 이 isELIgnored속성을 true로 하면 표현언어 구문을 해석할때 
			표현언어가 아닌 단순한 text로 해석하게 됩니다.
		*** 표현언어는 다음과 같이 ${값 또는 표현식} 형태로 사용
		*** 표현언어는 JSP의 스크립트릿, 표현식, 선언문을 제외한 나머지 영역에서 사용가능하며, 
			액션태그나 JSTL의 속성값으로도 사용될 수 있습니다.
	5) 브라우저에서 확인해서 값이 안나오는 것 확인
	 --%>
	 
	<%
		request.setAttribute("RequestAttribute", "request 내장 객체");
	%>
	${requestScope.RequestAttribute}
		<script>
			const str = '문자열';
			alert(`${str}입니다.`);
		</script>
</body>
</html>