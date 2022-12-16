package scwcd.lab04; 

import javax.servlet.*;
import java.io.*;
import java.util.*;

public class InitializeBookList implements ServletContextListener {
  public void contextInitialized(ServletContextEvent sce) {
    
    // ���o ServletContext ����
    ServletContext context = sce.getServletContext();
    
    // Ū�� recommendedBooks �_�l�Ѽƭ� 
    // �� context �_�l�ѼƩw�q�b web.xml)
    String booklist = context.getInitParameter("BookListFile");
    InputStream is = null;
    BufferedReader br = null;

    try {
      // Ū�� data/booklist.txt �ɮפ��e
      is = context.getResourceAsStream(booklist);
      br = new BufferedReader(new InputStreamReader(is));
      
      String bookDetails;   // �s��q booklist.txt Ū�����C�@�����
      GoodBooks books = new GoodBooks();

      // �̧Ǩ��X"�ѦW","�@��","�X����","ISBN","���" �����
      while ( (bookDetails = br.readLine()) != null ) {
        StringTokenizer tokens = new StringTokenizer(bookDetails, "|");
        String name = tokens.nextToken();
        String author = tokens.nextToken();
        String publisher = tokens.nextToken();
        String isbn = tokens.nextToken();
        String price = tokens.nextToken();
        // �إߤ@�� Book ����
        Book b = new Book(name, author, publisher, isbn, price);
         // �N Book ����[�J books ����(books����N�]�t�h�����y���) 
        books.addBook(b);
      }
      // �N books ����s�J ServletContext �����ݩ�(allBooks), 
      // ���� ShowGoodBooks �o�� Servelt �N�q Servletcontext ����
      // �����X allBooks �ݩ�
      context.setAttribute("allBooks", books);
      context.log("Web ���ε{����l�Ƶ{�Ǧ��\����!");
      is.close();
      br.close(); 
    } catch (Exception e) {
      context.log("Web ���ε{����l�Ƶ{�ǵo�Ͱ��D!!", e);
    } 
  }
  public void contextDestroyed(ServletContextEvent sce) {}
}