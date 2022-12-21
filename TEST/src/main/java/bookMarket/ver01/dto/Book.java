package bookMarket.ver01.dto;

public class Book {
	private String booktId;		// 도서 아이디
	private String name;		// 도서명
	private Integer unitPrice;	// 가격
	private String author;		// 저자
	private String description;	// 설명
	private String publisher;	// 출판사
	private String category;	// 분류
	private long unitslnStock;	// 재고 수
	private long totalPages;	// 페이지 수
	private String releaseDate;	// 출판일(월/년)
	private String condition;	// 신규 도서 or 중고 도서 or E-Book
	
	public Book() {
		super();
	}
	public Book(String booktId, String name, Integer unitPrice) {
		this.booktId = booktId;
		this.name = name;
		this.unitPrice = unitPrice;
	}
	public String getBooktId() {
		return booktId;
	}
	public void setBooktId(String booktId) {
		this.booktId = booktId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitslnStock() {
		return unitslnStock;
	}
	public void setUnitslnStock(long unitslnStock) {
		this.unitslnStock = unitslnStock;
	}
	public long getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
}
