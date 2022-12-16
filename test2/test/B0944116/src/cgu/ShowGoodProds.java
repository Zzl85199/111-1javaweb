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
	    
	    // 從 ServletContext 物件取出 allProducts 屬性
	    // (參考 InitializeProductList.java 第 43 行)
	    GoodProducts prods = (GoodProducts) context.getAttribute("allProducts");
	    Iterator items = prods.getProdList();

	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();

	    out.println("<HTML>");
	    out.println("<HEAD>");
	    out.println("<TITLE>Yahoo 資品資料列表</TITLE>");
	    out.println("</HEAD>");
	    out.println("<BODY>");
	    out.println("<H2>Yahoo 產品推薦</H2>");
	    out.println("<TABLE border=1  WIDTD=100%");
	    // 列印欄位名稱
	    //請再此處填入列印標題---------
	    out.println("<TR>");
	    out.println("<TD bgcolor=#C0C0C0>ID</TD>");
	    out.println("<TD bgcolor=#C0C0C0>品名</TD>");
	    out.println("<TD bgcolor=#C0C0C0>規格</TD>");
	    out.println("<TD bgcolor=#C0C0C0>單價</TD>");
	    out.println("<TD bgcolor=#C0C0C0>來源</TD>");
	    out.println("</TR>");

	    // 列印每一筆產品資料
	    while ( items.hasNext() ) {
	      //請再此處填入印出明細記錄-----------
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
