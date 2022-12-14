package cgu;

import javax.servlet.*;


import java.io.*;
import java.util.*;

public class InitializeProductList implements ServletContextListener{
	public void contextInitialized(ServletContextEvent sce) {
		// 取得 ServletContext 物件
	    ServletContext context = sce.getServletContext();
	    
	    // 讀取 recommendedBooks 起始參數值 
	    // 此 context 起始參數定義在 web.xml)
	    String productlist = context.getInitParameter("ProductListFile");
	    InputStream is = null;
	    BufferedReader br = null;

	    try {
	      // 讀取 data/prodlist.txt 檔案內容
	      is = context.getResourceAsStream(productlist);
	      br = new BufferedReader(new InputStreamReader(is));
	      
	      String prodDetails;   // 存放從 prodlist.txt 讀取的每一筆資料
	      GoodProducts prods = new GoodProducts();

	      // 依序取出"產品ID","產品名稱","產品規格","產品單價","產品來源" 等資料
	      while ( (prodDetails = br.readLine()) != null ) {
	        StringTokenizer tokens = new StringTokenizer(prodDetails, ",");
	        //請再此處分解每一列讀進來的記錄(分解成prodID, prodName, prodSpec, uniyPrice, prodSource)-----------
	        String prodID = tokens.nextToken();
	        String prodName = tokens.nextToken();
	        String prodSpec = tokens.nextToken();
	        String uniyPrice = tokens.nextToken();
	        String prodSource = tokens.nextToken();
			
			// 建立一個 Product 物件
	        Product b = new Product(prodID, prodName, prodSpec, uniyPrice, prodSource);
	         // 將 Product 物件加入 products 物件(products物件將包含多筆產品資料) 
	        prods.addProduct(b);
	      }
	      // 將 prods 物件存入 ServletContext 物件之屬性(allProducts), 
	      // 未來 ShowGoodProducts 這個 Servelt 將從 Servletcontext 物件
	      // 內取出 allProducts 屬性
	      context.setAttribute("allProducts", prods);
	      context.log("Web 應用程式初始化程序成功完成!");
	      is.close();
	      br.close(); 
	    } catch (Exception e) {
	      context.log("Web 應用程式初始化程序發生問題!!", e);
	    } 
	}
	public void contextDestroyed(ServletContextEvent sce) {}
}
