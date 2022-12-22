package bookMarket.ver01.dao;

import java.util.ArrayList;

import bookMarket.ver01.dto.Book;
import market.ver01.dao.ProductRepository;
import market.ver01.dto.Product;

public class BookRepository {
	ArrayList<Book> listOfBooks = new ArrayList<Book>();
	
	private static BookRepository instance = new BookRepository();
	public static BookRepository getInstance() { 
		return instance;
	}

	public BookRepository() {
		Book book1 = new Book("0101A", "책입니당", 20000);
		book1.setAuthor("첫번째작가");
		book1.setDescription("책입니당 첫번째 책 책입니당 첫번째 책 책입니당 첫번째 책 책입니당 첫번째 책 책입니당 첫번째 책 책입니당 첫번째 책 책입니당 첫번째 책 책입니당 첫번째 책");
		book1.setPublisher("하나출판사");
		book1.setCategory("인문사회");
		book1.setUnitslnStock(400);
		book1.setTotalPages(350);
		book1.setReleaseDate("07/2019");
		book1.setCondition("New");
		
		Book book2 = new Book("0202B", "고로로로", 30000);
		book2.setAuthor("고롱고롱");
		book2.setDescription("고로고로 고롱고롱 책입니다 고로고로 고롱고롱 책입니다 고로고로 고롱고롱 책입니다 고로고로 고롱고롱 책입니다 고로고로 고롱고롱 책입니다 고로고로 고롱고롱 책입니다 고로고로 고롱고롱 책입니다 고로고로 고롱고롱 책입니다");
		book2.setPublisher("공공출판사");
		book2.setCategory("철학");
		book2.setUnitslnStock(750);
		book2.setTotalPages(400);
		book2.setReleaseDate("11/2021");
		book2.setCondition("Refurbished");
		
		Book book3 = new Book("0303C", "해리포터", 30000);		book3.setAuthor("롤링어쩌구..");
		book3.setAuthor("조앤 롤링?");
		book3.setDescription("영화로 제작된 해리포터 책입니다 영화로 제작된 해리포터 책입니다 영화로 제작된 해리포터 책입니다 영화로 제작된 해리포터 책입니다 영화로 제작된 해리포터 책입니다 영화로 제작된 해리포터 책입니다");
		book3.setPublisher("소담출판사");
		book3.setCategory("소설");
		book3.setUnitslnStock(80);
		book3.setTotalPages(500);
		book3.setReleaseDate("04/2003");
		book3.setCondition("E-Book");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
	}
	
	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}
	
	public Book getBookById(String booktId) {
		Book bookById = null;
		
		for(int i=0; i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null &&
				book.getBooktId().equals(booktId) &&
				book.getBooktId() != null) {
					bookById = book;
					break;
			}
		} return bookById;
	}
	// 추가하는 부분 ================================ 
	// (위에 적혀있는 상품 외에도 추가되는 것들을 리스트에 포함 시키는 것)===========
	public void addBook(Book Book) { 
		listOfBooks.add(Book);
	}
	
}
