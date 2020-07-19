package com.niit.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.dao.CartDAOImplementation;
import com.niit.dao.CategoryDAOImplementation;
import com.niit.dao.ProductDAOImplementation;
import com.niit.dao.SupplierDAOImplementation;
import com.niit.dao.UserDAOImplementation;
import com.niit.model.CartItem;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;

@Configuration
@ComponentScan("com.niit")
@EnableTransactionManagement
public class DBConfig {
	@Bean(name = "datasource")
	public DataSource getH2DataSource() {
		DriverManagerDataSource datasource = new DriverManagerDataSource();
		datasource.setDriverClassName("org.h2.Driver");
		datasource.setUrl("jdbc:h2:tcp://localhost/~/test");
		datasource.setUsername("sa");
		datasource.setPassword("");
		return datasource;
	}

	@Bean(name = "sessionfactory")
	public SessionFactory getSessionFactory() {
		Properties hproperties = new Properties();
		hproperties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		hproperties.setProperty("hibernate.hbm2ddl.auto", "update");

		LocalSessionFactoryBuilder localsession = new LocalSessionFactoryBuilder(getH2DataSource());
		localsession.addProperties(hproperties);
		localsession.addAnnotatedClass(Category.class);
		localsession.addAnnotatedClass(Supplier.class);
		localsession.addAnnotatedClass(Product.class);
		localsession.addAnnotatedClass(User.class);
		localsession.addAnnotatedClass(CartItem.class);

		SessionFactory sessionfactory = localsession.buildSessionFactory();
		return sessionfactory;
	}

	@Bean(name = "transactionmanager")
	public HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionfactory) {
		return new HibernateTransactionManager(sessionfactory);
	}

	@Bean(name = "categoryDAO")
	public CategoryDAOImplementation getCategoryDAOImplementation() {
		return new CategoryDAOImplementation();
	}

	@Bean(name = "supplierDAO")
	public SupplierDAOImplementation getSupplierDAOImplementation() {
		return new SupplierDAOImplementation();
	}

	@Bean(name = "productDAO")
	public ProductDAOImplementation getProductDAOImplementation() {
		return new ProductDAOImplementation();
	}

	@Bean(name = "userDAO")
	public UserDAOImplementation getUserDAOImplementation() {
		return new UserDAOImplementation();
	}

	@Bean(name = "cartDAO")
	public CartDAOImplementation getCartDAOImplementation() {
		return new CartDAOImplementation();
	}
}
