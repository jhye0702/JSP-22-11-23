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
		Book book1 = new Book("0101A", "å�Դϴ�", 20000);
		book1.setAuthor("ù��°�۰�");
		book1.setDescription("å�Դϴ� ù��° å å�Դϴ� ù��° å å�Դϴ� ù��° å å�Դϴ� ù��° å å�Դϴ� ù��° å å�Դϴ� ù��° å å�Դϴ� ù��° å å�Դϴ� ù��° å");
		book1.setPublisher("�ϳ����ǻ�");
		book1.setCategory("�ι���ȸ");
		book1.setUnitslnStock(400);
		book1.setTotalPages(350);
		book1.setReleaseDate("07/2019");
		book1.setCondition("New");
		
		Book book2 = new Book("0202B", "��ηη�", 30000);
		book2.setAuthor("��հ��");
		book2.setDescription("��ΰ�� ��հ�� å�Դϴ� ��ΰ�� ��հ�� å�Դϴ� ��ΰ�� ��հ�� å�Դϴ� ��ΰ�� ��հ�� å�Դϴ� ��ΰ�� ��հ�� å�Դϴ� ��ΰ�� ��հ�� å�Դϴ� ��ΰ�� ��հ�� å�Դϴ� ��ΰ�� ��հ�� å�Դϴ�");
		book2.setPublisher("�������ǻ�");
		book2.setCategory("ö��");
		book2.setUnitslnStock(750);
		book2.setTotalPages(400);
		book2.setReleaseDate("11/2021");
		book2.setCondition("Refurbished");
		
		Book book3 = new Book("0303C", "�ظ�����", 30000);		book3.setAuthor("�Ѹ���¼��..");
		book3.setAuthor("���� �Ѹ�?");
		book3.setDescription("��ȭ�� ���۵� �ظ����� å�Դϴ� ��ȭ�� ���۵� �ظ����� å�Դϴ� ��ȭ�� ���۵� �ظ����� å�Դϴ� ��ȭ�� ���۵� �ظ����� å�Դϴ� ��ȭ�� ���۵� �ظ����� å�Դϴ� ��ȭ�� ���۵� �ظ����� å�Դϴ�");
		book3.setPublisher("�Ҵ����ǻ�");
		book3.setCategory("�Ҽ�");
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
	// �߰��ϴ� �κ� ================================ 
	// (���� �����ִ� ��ǰ �ܿ��� �߰��Ǵ� �͵��� ����Ʈ�� ���� ��Ű�� ��)===========
	public void addBook(Book Book) { 
		listOfBooks.add(Book);
	}
	
}
