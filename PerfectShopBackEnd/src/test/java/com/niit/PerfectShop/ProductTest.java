
package com.niit.PerfectShop;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.PerfectShop.dao.ProductDAO;
import com.niit.PerfectShop.domain.Product;

public class ProductTest {

	
	
		@Autowired static AnnotationConfigApplicationContext context;
		@Autowired static ProductDAO productDAO;
		@Autowired static Product product;
		@BeforeClass
		public static void initialize()
		{
			context=new AnnotationConfigApplicationContext();
			context.scan("com.niit.PerfectShop");
			context.refresh();
			productDAO=(ProductDAO)context.getBean("productDAO");
			product=(Product)context.getBean("product");
		}
		@Test
		public void testCreateProductTestCase()
		{
          product.setId("B896");
          product.setName("Goku");
          product.setPrice("7000");
          product.setCategory_id("First Book");
          product.setCategory_id("A123");
          product.setSupplier_id("S789");
          boolean flag=productDAO.save(product);
          assertEquals("createProductTestCase",true,flag);
		}
}


