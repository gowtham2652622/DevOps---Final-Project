package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

public class CategoryDAOTest {
	static CategoryDAO categorydao;

	@BeforeClass
	public static void intialize() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit");

		context.refresh();

		categorydao = (CategoryDAO) context.getBean("categoryDAO");

	}

	@Ignore
	@Test
	public void addCategoryTest() {
		Category category = new Category();
		category.setCategoryName("Mens Fashion");
		category.setCategoryDesc(
				"Clothing, T-shirts, Jeans, Innerwear");
		assertTrue("problem in adding category:", categorydao.addCategory(category));
	}

	@Test
	public void updateCategoryTest() {
		Category category = categorydao.getCategory(34);
		category.setCategoryName("Women Fashion");
		category.setCategoryDesc("Western wear, Ethnic wear, Top Brands, Nightwear");
		assertTrue("problem in updating category:", categorydao.updateCategory(category));
	}

	@Test
	@Ignore
	public void deleteCategoryTest() {
		Category category = categorydao.getCategory(15);

		assertTrue("problem in deleting category:", categorydao.deleteCategory(category));

	}

	@Test
	public void listCategoryTest() {
		List<Category> listcategory = categorydao.listCategory();
		assertNotNull("problem in listing:", listcategory);

		for (Category category : listcategory) {
			System.out.print(category.getCategoryID() + ":::");
			System.out.print(category.getCategoryName() + ":::");
			System.out.println(category.getCategoryDesc());

		}
	}
}
