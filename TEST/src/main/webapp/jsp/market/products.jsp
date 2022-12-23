<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="market.ver01.dto.Product" %>
<%-- 이부분 삭제 ! jsp:useBean id="productDAO" class="market.ver01.dao.ProductRepository" scope="session" />
 --%>
<%-- 삭제한 대신 대체! --%>
<%@ page import="market.ver01.dao.ProductRepository" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%-- 추가되는 게 dao --%>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
		%>
	
	<div class="container">
		<div class="row" align="center">
			<%
			for(int i=0; i<listOfProducts.size(); i++) {
							Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<img src = "${pageContext.request.contextPath}/resources/images/<%=product.getFilename()%>"
				style = "width : 100%" alt="">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><%=product.getUnitPrice() %>원
				<p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">
				상세 정보 &raquo;</a>
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