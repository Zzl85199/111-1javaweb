
import java.io.IOException;
import java.io.PrintWriter;

import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.*;



/**
 * Servlet implementation class sendMail
 */
@WebServlet("/sendMail")
public class sendMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendMail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");   
		PrintWriter out = response.getWriter();
	    String To = request.getParameter("to");
	    String Subject = request.getParameter("subject");
	    String content = request.getParameter("content");
	    final String fromEmail = "jonathan40507"; //requires valid gmail id
	    String ps="ewdlidzmnuywjmos";
        final String password = ps; // correct password for gmail id
 	 
	      // Sender's email ID needs to be mentioned
	      String from = "your gmail account";
	 
	      // Assuming you are sending email from localhost
	      String host = "localhost";
	 
	      // Get system properties
	      Properties props = new Properties();
	        props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
	        props.put("mail.smtp.port", "587"); //TLS Port
	        props.put("mail.smtp.auth", "true"); //enable authentication
	        props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
	        try{
	            //String userName=request.getParameter("p1");
	            //String password=request.getParameter("p2");
	        	 Authenticator auth = new Authenticator() {
			            //override the getPasswordAuthentication method
			            protected PasswordAuthentication getPasswordAuthentication() {
			                return new PasswordAuthentication(fromEmail, password);
			            }
			        };
			        Session ses = Session.getInstance(props, auth);
	            //Session ses=Session.getInstance(props,null);
	            Message msg=new MimeMessage(ses);
	            msg.setFrom(new InternetAddress(request.getRequestURI()));
	            msg.addRecipient(Message.RecipientType.TO,new InternetAddress(To));
	            msg.setSubject(Subject);
	            msg.setText(content);
	            Transport.send(msg);
	            out.println("<HTML>");
	    	    out.println("<HEAD>");
	    	    out.println("<TITLE>Send Mail</TITLE>");
	    	    out.println("</HEAD>");
	    	    out.println("<BODY>");
	    	    out.println("<B>你好, 信已寄出, 請到信箱檢視 !</B>");
	    	    out.println("</BODY>");
	    	    out.println("</HTML>");
	    	    out.close();
	        }
	        catch(Exception e)
	        {
	            System.out.println(e);
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
