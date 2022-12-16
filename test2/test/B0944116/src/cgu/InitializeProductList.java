package cgu;

import javax.servlet.*;


import java.io.*;
import java.util.*;

public class InitializeProductList implements ServletContextListener{
	public void contextInitialized(ServletContextEvent sce) {
		// ���o ServletContext ����
	    ServletContext context = sce.getServletContext();
	    
	    // Ū�� recommendedBooks �_�l�Ѽƭ� 
	    // �� context �_�l�ѼƩw�q�b web.xml)
	    String productlist = context.getInitParameter("ProductListFile");
	    InputStream is = null;
	    BufferedReader br = null;

	    try {
	      // Ū�� data/prodlist.txt �ɮפ��e
	      is = context.getResourceAsStream(productlist);
	      br = new BufferedReader(new InputStreamReader(is));
	      
	      String prodDetails;   // �s��q prodlist.txt Ū�����C�@�����
	      GoodProducts prods = new GoodProducts();

	      // �̧Ǩ��X"���~ID","���~�W��","���~�W��","���~���","���~�ӷ�" �����
	      while ( (prodDetails = br.readLine()) != null ) {
	        StringTokenizer tokens = new StringTokenizer(prodDetails, ",");
	        //�ЦA���B���ѨC�@�CŪ�i�Ӫ��O��(���Ѧ�prodID, prodName, prodSpec, uniyPrice, prodSource)-----------
	        String prodID = tokens.nextToken();
	        String prodName = tokens.nextToken();
	        String prodSpec = tokens.nextToken();
	        String uniyPrice = tokens.nextToken();
	        String prodSource = tokens.nextToken();
			
			// �إߤ@�� Product ����
	        Product b = new Product(prodID, prodName, prodSpec, uniyPrice, prodSource);
	         // �N Product ����[�J products ����(products����N�]�t�h�����~���) 
	        prods.addProduct(b);
	      }
	      // �N prods ����s�J ServletContext �����ݩ�(allProducts), 
	      // ���� ShowGoodProducts �o�� Servelt �N�q Servletcontext ����
	      // �����X allProducts �ݩ�
	      context.setAttribute("allProducts", prods);
	      context.log("Web ���ε{����l�Ƶ{�Ǧ��\����!");
	      is.close();
	      br.close(); 
	    } catch (Exception e) {
	      context.log("Web ���ε{����l�Ƶ{�ǵo�Ͱ��D!!", e);
	    } 
	}
	public void contextDestroyed(ServletContextEvent sce) {}
}