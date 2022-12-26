<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="bookMarket.ver01.dto.Book"%>
<%@ page import="bookMarket.ver01.dao.BookRepository"%>
<%@ page import="java.io.File" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String realPath = request.getServletContext().getRealPath("resources/images"); //파일저장된 경로
	File dir = new File(realPath);//dir directory(=폴더)
	if(!dir.exists()){
	   dir.mkdirs(); //makedirectorys 폴더없으면 폴더 만들어라
	}
	
	String filename="";
	String encType="utf-8"; //인코딩 타입
	int maxSize = 5 *1024 *1024; //최대 업르도될 파일의 크기 5mb
	
	MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, encType, new DefaultFileRenamePolicy());


	String booktId = multi.getParameter("booktId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String author = multi.getParameter("author");
	String description = multi.getParameter("description");
	String publisher = multi.getParameter("publisher");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String totalPages = multi.getParameter("totalPages");
	String releaseDate = multi.getParameter("releaseDate");
	String condition = multi.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
//=========================================================
	long stock;
	
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
//=========================================================
	long pages;
	
	if(totalPages.isEmpty()){
		pages = 0;
	}
	else
		pages = Long.valueOf(totalPages);

	Enumeration files = multi.getFileNames();
    String fname=(String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);
	
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBooktId(booktId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setAuthor(author);
	newBook.setDescription(description);
	newBook.setPublisher(publisher);
	newBook.setCategory(category);
	newBook.setUnitslnStock(stock);
	newBook.setTotalPages(pages);
	newBook.setReleaseDate(releaseDate);
	newBook.setCondition(condition);
	newBook.setFilename(fileName);
	
	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
	
%>