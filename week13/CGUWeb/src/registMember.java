

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class registMember
 */
@WebServlet("/registMember")
public class registMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn = null;
    String targetDB;
    int cannotConnect = 0;
    HttpSession session;
    public void init() throws ServletException {
    	ServletContext sctx = getServletContext();
    	String url= sctx.getInitParameter("url");
    	String driver_type= sctx.getInitParameter("driver_type");
    	String username= sctx.getInitParameter("db_user");
    	String passwd= sctx.getInitParameter("db_ps");
        //String driver_type = "com.mysql.jdbc.Driver";
        //String url         = "jdbc:mysql://localhost:3306/excise?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
        //String username    = "root";
        //String passwd      = "tnfd5503";        
        
        try{        	
          Class.forName(driver_type);
          conn = DriverManager.getConnection(url, username, passwd);
          
        }
        catch (ClassNotFoundException e) {
          cannotConnect = 1;
          System.out.println("class not found");
          System.out.println(e.toString());
        }
        catch (SQLException e){
          cannotConnect = 2;
          System.out.println("sql error");
          System.out.println(e.toString());
        }
      }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		/*
		HttpSession session = request.getSession();
		boolean login=(boolean)session.getAttribute("login");
		if (!login) {
			response.sendRedirect("./html/index.htm");
		}
		*/
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");	
		String username = request.getParameter("email");
		String ps = request.getParameter("psw");
		String mobile=request.getParameter("mobile");
		String role="user";
		String sql="insert into member (id,ps,actno,role,sno,createtime) values ('"+username+"','"+ ps +"','" + mobile +"','"+role+"',uuid(),sysdate())";
		PrintWriter out = response.getWriter();
		System.out.println(sql);
		try {
			Statement stat = conn.createStatement();
			int result = stat.executeUpdate(sql);
			if (result==1) {								
				response.sendRedirect("./html/login.html");
				out.print("Regist Scuuess");
			} else {
				out.print("Regist false");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
