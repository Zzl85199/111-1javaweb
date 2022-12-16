package scwcd.lab04; 

import javax.servlet.*;
import java.io.*;
import java.util.*;

public class InitializeBookList implements ServletContextListener {
  public void contextInitialized(ServletContextEvent sce) {
    
    // 取得 ServletContext 物件
    ServletContext context = sce.getServletContext();
    
    // 讀取 recommendedBooks 起始參數值 
    // 此 context 起始參數定義在 web.xml)
    String booklist = context.getInitParameter("BookListFile");
    InputStream is = null;
    BufferedReader br = null;

    try {
      // 讀取 data/booklist.txt 檔案內容
      is = context.getResourceAsStream(booklist);
      br = new BufferedReader(new InputStreamReader(is));
      
      String bookDetails;   // 存放從 booklist.txt 讀取的每一筆資料
      GoodBooks books = new GoodBooks();

      // 依序取出"書名","作者","出版社","ISBN","售價" 等資料
      while ( (bookDetails = br.readLine()) != null ) {
        StringTokenizer tokens = new StringTokenizer(bookDetails, "|");
        String name = tokens.nextToken();
        String author = tokens.nextToken();
        String publisher = tokens.nextToken();
        String isbn = tokens.nextToken();
        String price = tokens.nextToken();
        // 建立一個 Book 物件
        Book b = new Book(name, author, publisher, isbn, price);
         // 將 Book 物件加入 books 物件(books物件將包含多本書籍資料) 
        books.addBook(b);
      }
      // 將 books 物件存入 ServletContext 物件之屬性(allBooks), 
      // 未來 ShowGoodBooks 這個 Servelt 將從 Servletcontext 物件
      // 內取出 allBooks 屬性
      context.setAttribute("allBooks", books);
      context.log("Web 應用程式初始化程序成功完成!");
      is.close();
      br.close(); 
    } catch (Exception e) {
      context.log("Web 應用程式初始化程序發生問題!!", e);
    } 
  }
  public void contextDestroyed(ServletContextEvent sce) {}
}