package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

public class ProductDAOTest {
	static ProductDAO productdao;

	@BeforeClass
	public static void intialize() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit");

		context.refresh();

		productdao = (ProductDAO) context.getBean("ProductDAO");

	}

	@Ignore
	@Test
	public void addProductTest() {
		Product product = new Product();
		product.setProductName("Television");
		product.setProductDesc("LG, Samsung, Philips, Sony");
		assertTrue("problem in adding product:", productdao.addProduct(product));
	}

	@Test
	public void updateProductTest() {
		Product product = productdao.getProduct(36);
		product.setProductName("Headphones");
		product.setProductDesc("Boat, Sony, JBL, Infinity");
		assertTrue("problem in updating product:", productdao.updateProduct(product));

	}

	@Ignore
	@Test
	public void deleteProductTest() {
		Product product = productdao.getProduct(16);

		assertTrue("problem in deleting product:", productdao.deleteProduct(product));

	}

	@Test
	public void listProductTest() {
		List<Product> listproduct = productdao.listProduct();
		assertNotNull("problem in listing:", listproduct);

		for (Product product : listproduct) {
			System.out.print(product.getProductID() + ":::");
			System.out.print(product.getProductName() + ":::");
			System.out.println(product.getProductDesc());

		}
	}
}
