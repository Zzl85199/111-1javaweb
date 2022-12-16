package cgu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ShowGoodProds
 */
@WebServlet("/ShowGoodProds")
public class ShowGoodProds extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowGoodProds() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		ServletContext context = getServletContext();
	    
	    // �q ServletContext ������X allProducts �ݩ�
	    // (�Ѧ� InitializeProductList.java �� 43 ��)
	    GoodProducts prods = (GoodProducts) context.getAttribute("allProducts");
	    Iterator items = prods.getProdList();

	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();

	    out.println("<HTML>");
	    out.println("<HEAD>");
	    out.println("<TITLE>Yahoo ��~��ƦC��</TITLE>");
	    out.println("</HEAD>");
	    out.println("<BODY>");
	    out.println("<H2>Yahoo ���~����</H2>");
	    out.println("<TABLE border=1  WIDTD=100%");
	    // �C�L���W��
	    //�ЦA���B��J�C�L���D---------
	    out.println("<TR>");
	    out.println("<TD bgcolor=#C0C0C0>ID</TD>");
	    out.println("<TD bgcolor=#C0C0C0>�~�W</TD>");
	    out.println("<TD bgcolor=#C0C0C0>�W��</TD>");
	    out.println("<TD bgcolor=#C0C0C0>���</TD>");
	    out.println("<TD bgcolor=#C0C0C0>�ӷ�</TD>");
	    out.println("</TR>");

	    // �C�L�C�@�����~���
	    while ( items.hasNext() ) {
	      //�ЦA���B��J�L�X���ӰO��-----------
	    	Product book = (Product) items.next();
	        out.println("<TR>");
	        out.println("<TD>" + book.getProdID() + "</TD>");
	        out.println("<TD>" + book.getProdName() + "</TD>");
	        out.println("<TD>" + book.getProdSpec() + "</TD>");
	        out.println("<TD>" + book.getUnitPrice() + "</TD>");
	        out.println("<TD>" + book.getProdSource() + "</TD>");
	        out.println("</TR>");

	    }
	    out.println("</TABLE>");
	    out.println("</BODY>");
	    out.println("</HTML>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
