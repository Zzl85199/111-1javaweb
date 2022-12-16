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
    
    // �q ServletContext ������X allBooks �ݩ�
    // (�Ѧ� InitializeBookList.java �� 43 ��)
    GoodBooks books = (GoodBooks) context.getAttribute("allBooks");
    Iterator items = books.getBookList();

    response.setContentType("text/html;charset=big5");
    PrintWriter out = response.getWriter();

    out.println("<HTML>");
    out.println("<HEAD>");
    out.println("<TITLE>Java �n�ѱ���</TITLE>");
    out.println("</HEAD>");
    out.println("<H2>Java �n�ѱ���</H2>");
    out.println("<TABLE border=1  WIDTD=100%");
    
    // �C�L���W��
    out.println("<TR>");
    out.println("<TD bgcolor=#C0C0C0>�ѦW</TD>");
    out.println("<TD bgcolor=#C0C0C0>�@��</TD>");
    out.println("<TD bgcolor=#C0C0C0>�X����</TD>");
    out.println("<TD bgcolor=#C0C0C0>ISBN</TD>");
    out.println("<TD bgcolor=#C0C0C0>���</TD>");
    out.println("</TR>");
    
    // �C�L�C�@�����y���
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