

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class LoginValid
 */
@WebServlet("/LoginValid")
public class LoginValid extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn = null;
    String targetDB;
    int cannotConnect = 0;
    HttpSession session;
    public void init() throws ServletException {
    	//String myDbUrl = getServletConfig().getInitParameter("DB_URL");
    	ServletContext sctx = getServletContext();
    	String url= sctx.getInitParameter("url");
    	String driver_type= sctx.getInitParameter("driver_type");
    	String username= sctx.getInitParameter("db_user");
    	String passwd= sctx.getInitParameter("db_ps");
        //String driver_type = "com.mysql.jdbc.Driver";
        //String url         = "jdbc:mysql://localhost:3306/biocellec?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
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
    public LoginValid() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");	
		String username = request.getParameter("username");
		String ps = request.getParameter("password");
		/*
		 * stringsql = "select * from people p where p.id = ? and p.name = ?";
			preparedstatement ps = connection.preparestatement(sql);
			ps.setint(1,id);
			ps.setstring(2,name);
			resultset rs = ps.executequery();
		 */
		//String sql="select * from member where id='"+username+"' and ps='"+ ps +"'";
		String sql="select * from member where id=? and ps=?";
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		writeLogDB wdb =new writeLogDB();
		try {
			//Statement stat = conn.createStatement();
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,username);
			pst.setString(2,ps);
			ResultSet resultSet = pst.executeQuery();
			if (resultSet.next()) {
				String role= resultSet.getString("role");
				session.setAttribute("login", true);
				session.setAttribute("id", username);
				session.setAttribute("role", role);
				wdb.setLogID(username);
				wdb.setConn(conn);
				if (role.equals("user")) {
					wdb.setLogDesc("user login");
				} else if (role.equals("admin")) {
					wdb.setLogDesc("admin login");
				} else {
					wdb.setLogDesc("Normal login");
				}
				
				int upd=wdb.ExecSQL();
				response.sendRedirect("./html/menu1.html");
				out.print("login true");
			} else {
				out.print("login false");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
