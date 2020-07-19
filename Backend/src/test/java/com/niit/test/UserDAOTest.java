package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDAO;
import com.niit.model.User;

public class UserDAOTest {
	static UserDAO userdao;

	@BeforeClass
	public static void intialize() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit");

		context.refresh();

		userdao = (UserDAO) context.getBean("userDAO");

	}

	@Ignore
	@Test
	public void registerUserTest() {
		User user = new User();
		user.setUserName("Gowtham2");
		user.setMobileNumber("9698257863");
		user.setEmailID("igowtham.bca@gmail.com");
		assertTrue("Problem in Registering User :", userdao.registerUser(user));

	}

	//@Ignore
	@Test
	public void modifyUserTest() {
		User user = new User();
		user.setUserName("Gowtham2");
		user.setMobileNumber("12565876");
		user.setEmailID("Shiroo@gmail.com");
		assertTrue("Problem in modifying User:", userdao.modifyUser(user));
	}

	@Test
	public void listUserTest() {
		List<User> listuser = userdao.listUser();
		assertNotNull("problem in listing:", listuser);

		for (User user : listuser) {
			System.out.println(user.getUserName() + ":::");
			System.out.println(user.getMobileNumber() + ":::");
			System.out.println(user.getEmailID());
		}
	}
}
