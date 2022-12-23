package market.ver01.dao;

import java.util.ArrayList;

import market.ver01.dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	// 추가하는 부분
	private static ProductRepository instance = new ProductRepository(); // 추가부분
	// 추가하는 생성자
	public static ProductRepository getInstance() { 
		return instance;
	}
	
	public ProductRepository () {
		Product phone = new Product ("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock (1000);
		phone.setCondition ("New");
		phone.setFilename("P1234.png");
		
		Product notebook = new Product ("P1235", "LG PC ", 1500000);
		notebook.setDescription ("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock (1000);
		notebook.setCondition ("Refurbished");
		notebook.setFilename("P1235.png");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, super AMOLED display, Octa-Core procesor");
		tablet.setCategory ("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	// =========================== 아이디를 이용해서 제품 목록에서 해당되는 제품을 찾는 것
	
	public Product getProductById(String productId) {  
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && 
			   product.getProductId() != null && 
			   product.getProductId().equals(productId)) {
					productById = product;
					break; // 제품을 찾으면 for문을 종료시킴!
			}
				
		}
		return productById;
	}
	
	// 추가하는 부분 ================================ 
	// (위에 적혀있는 상품 외에도 추가되는 것들을 리스트에 포함 시키는 것)===========
	public void addProduct(Product product) { 
		listOfProducts.add(product);
	}
}
