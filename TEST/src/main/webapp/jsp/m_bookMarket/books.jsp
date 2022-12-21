<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="bookMarket.ver01.dto.Book" %>
<jsp:useBean id="bookdDAO" class="bookMarket.ver01.dao.BookRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	
	<%
		ArrayList<Book> listOfBooks = bookdDAO.getAllBooks();
		%>
	
	<div class="container">
		<div class="col">
			<%
			for(int i=0; i<listOfBooks.size(); i++) {
							Book book = listOfBooks.get(i);
			%>
			<div class="col-mid-4">
				<h3><%="["+book.getCategory()+"] " + book.getName()%></h3>
				<p><%=book.getDescription() %>
				<p><%=book.getAuthor()+" | "+book.getPublisher()+" | "+book.getUnitPrice()%>원
				<p><a href="./book.jsp?id=<%=book.getBooktId()%>" class="btn btn-secondary" role="button">
				상세 정보 &raquo;</a>
				<hr>
			</div>
			<% 
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>