import javax.servlet.*;
import javax.servlet.http.*;

public class BaseBallStatServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
	throws java.io.IOException {
	resp.setContentType("text/html");
	java.io.PrintWriter html = resp.getWriter();

	String player = (String) req.getParameter("player");

	html.println("<HTML><HEAD><TITLE>MLB Player Stats</TITLE></HEAD>");
	html.println("<BODY>");

	if ((player == null) || (player.length() == 0)) {
	    html.println("<H1>No Player Requested</H1>");
	} else {
	    if (player.equals("Nomar Garciapara")) {
		html.println("<H1>Nomar is batting .932</H1>");
	    } else {
		html.println("<H1>" + player + " is batting .234</H1>");
	    }
	}
	html.println("</BODY></HTML>");
    }
}
