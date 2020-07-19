package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

public class SupplierDAOTest {
	static SupplierDAO supplierdao;

	@BeforeClass
	public static void intialize() {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit");

		context.refresh();

		supplierdao = (SupplierDAO) context.getBean("supplierDAO");

	}

	@Ignore
	@Test
	public void addSupplierTest() {
		Supplier supplier = new Supplier();
		supplier.setSupplierName("Alibaba");
		supplier.setSupplierAddress("South Asia");
		assertTrue("problem in adding supplier:", supplierdao.addSupplier(supplier));
	}

	
	@Test
	public void updateSupplierTest() {
		Supplier supplier = supplierdao.getSupplier(38);
		supplier.setSupplierName("AMZ");
		supplier.setSupplierAddress("North Asia");
		assertTrue("problem in updating supplier:", supplierdao.updateSupplier(supplier));

	}
	@Ignore
	@Test
	public void deleteSupplierTest() {
		Supplier supplier = supplierdao.getSupplier(19);
		assertTrue("problem in deleting supplier:", supplierdao.deleteSupplier(supplier));

	}

	@Test
	public void listSupplierTest() {
		List<Supplier> listsupplier = supplierdao.listSupplier();
		assertNotNull("problem in listing:", listsupplier);

		for (Supplier supplier : listsupplier) {
			System.out.print(supplier.getSupplierID() + ":::");
			System.out.print(supplier.getSupplierName() + ":::");
			System.out.println(supplier.getSupplierAddress());

		}
	}
}
