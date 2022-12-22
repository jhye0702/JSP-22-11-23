<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bookMarket.ver01.dto.Book" %>
<%@ page import="bookMarket.ver01.dao.BookRepository" %>
<%--유즈빈 없애기 ! jsp:useBean id="bookDAO" class="bookMarket.ver01.dao.BookRepository" scope="session" />
 --%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>도서 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">도서 정보</h1>
			</div>
		</div>
		<%
			String id = request.getParameter("id");
			BookRepository dao = BookRepository.getInstance();
			Book book = dao.getBookById(id);
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h3><%=book.getName()%></h3>
					<p><%=book.getDescription()%>
					<p><b>도서코드 : </b>	<span class="badge badge-danger"> <%=book.getBooktId() %></span>
					<p><b>저자</b> :	 <%=book.getAuthor() %>
					<p><b>출판사</b> :	 <%=book.getPublisher() %>
					<p><b>분류</b>: 		<%=book.getCategory()%>
					<p><b>재고 수</b> : 	<%=book.getUnitslnStock()%>
					<p><b>페이지 수</b> : 	<%=book.getTotalPages()%>
					<p><b>출판일</b> : 	<%=book.getReleaseDate()%>
					<p><b>신규/중고/E-Book</b> : 	<%=book.getCondition()%>
					
					<h4><%=book.getUnitPrice()%>원</h4>
					<p><a href="#" class="btn btn-info"> 도서 주문 &raquo;</a>
					<a href="./books.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>
				</div>
			</div>
			<hr>
		</div>
		<jsp:include page="footer.jsp"/>
</body>
</html>