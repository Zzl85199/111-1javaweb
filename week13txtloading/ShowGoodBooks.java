package scwcd.lab04; 

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class ShowGoodBooks extends HttpServlet {
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
         throws IOException {
    ServletContext context = getServletContext();
    
    // 從 ServletContext 物件取出 allBooks 屬性
    // (參考 InitializeBookList.java 第 43 行)
    GoodBooks books = (GoodBooks) context.getAttribute("allBooks");
    Iterator items = books.getBookList();

    response.setContentType("text/html;charset=big5");
    PrintWriter out = response.getWriter();

    out.println("<HTML>");
    out.println("<HEAD>");
    out.println("<TITLE>Java 好書推薦</TITLE>");
    out.println("</HEAD>");
    out.println("<H2>Java 好書推薦</H2>");
    out.println("<TABLE border=1  WIDTD=100%");
    
    // 列印欄位名稱
    out.println("<TR>");
    out.println("<TD bgcolor=#C0C0C0>書名</TD>");
    out.println("<TD bgcolor=#C0C0C0>作者</TD>");
    out.println("<TD bgcolor=#C0C0C0>出版社</TD>");
    out.println("<TD bgcolor=#C0C0C0>ISBN</TD>");
    out.println("<TD bgcolor=#C0C0C0>售價</TD>");
    out.println("</TR>");
    
    // 列印每一筆書籍資料
    while ( items.hasNext() ) {
      Book book = (Book) items.next();
      out.println("<TR>");
      out.println("<TD>" + book.getName() + "</TD>");
      out.println("<TD>" + book.getAuthor() + "</TD>");
      out.println("<TD>" + book.getPublisher() + "</TD>");
      out.println("<TD>" + book.getIsbn() + "</TD>");
      out.println("<TD>" + book.getPrice() + "</TD>");
      out.println("</TR>");
    }
    out.println("</TABLE>");
    out.println("</BODY>");
    out.println("</HTML>");
  }
}