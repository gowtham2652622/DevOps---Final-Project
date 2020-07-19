package com.niit.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartDAO;
import com.niit.model.CartItem;

public class CartDAOTest {

	static CartDAO cartdao;

	@BeforeClass
	public static void intialize() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit");

		context.refresh();

		cartdao = (CartDAO) context.getBean("cartDAO");

	}

	@Ignore
	@Test
	public void addCartItemTest() {
		CartItem cartItem = new CartItem();
		cartItem.setProductId(21);
		cartItem.setProductName("WATER HEATER");
		cartItem.setPrice(400);
		cartItem.setQuantity(2);
		cartItem.setUsername("Ajith");
		cartItem.setPstatus("NP");
		assertTrue("problem in adding to cartItem:", cartdao.addCartItem(cartItem));
	}
	@Ignore
	@Test
	public void updateCartItemTest() {
		CartItem cartItem = cartdao.getCartItem(68);
		cartItem.setProductId(21);
		cartItem.setProductName("SOLAR WATER HEATER");
		cartItem.setPrice(8000);
		cartItem.setQuantity(4);
		cartItem.setUsername("Ajith");
		cartItem.setPstatus("NP");
		assertTrue("problem in updating to cartItem:", cartdao.updateCartItem(cartItem));
	}

	//@Ignore
	@Test
	public void deleteCartItemTest() {
		CartItem cartItem = cartdao.getCartItem(68);

		assertTrue("problem in Deleting to cartItem:", cartdao.deleteCartItem(cartItem));
	}

	@Test
	public void listCartItemTest() {
		List<CartItem> listCartItem = cartdao.listCartItem("Ajith");
		assertTrue("problem in listing cart item:", listCartItem.size() > 0);

		for (CartItem cartItem : listCartItem) {
			System.out.print(cartItem.getProductId());
			System.out.print(cartItem.getProductName());
			System.out.println(cartItem.getQuantity());

		}
	}
}