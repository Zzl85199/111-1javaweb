<%@ page import="com.bfg.customer.Customer" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="sun.misc.BASE64Encoder" %>

<jsp:useBean id="customer" class="com.bfg.customer.Customer" scope="session"/>
<jsp:useBean id="cart" class="com.bfg.cart.Cart" scope="session"/>

<%
String error = null;
if (request.getParameter("SUBMITTED") != null) {
    Customer c = Customer.findCustomer(request.getParameter("email"));
    if (c == null) {
	error = "No such e-Mail found, please try again.";
    } else {
	if (request.getParameter("password").equals(c.getPassword())) {
	    customer = c;
	    c.setCart(cart);
	    c.fillCart();
	    pageContext.setAttribute("customer",c, PageContext.SESSION_SCOPE);
	    BASE64Encoder enc = new BASE64Encoder();
	    Cookie cook = new Cookie("bfgUsername",
				    enc.encode(customer.getEmail().getBytes()));
	    cook.setMaxAge(3600*24*365);
	    cook.setPath("/");
	    response.addCookie(cook);
	    cook = new Cookie("bfgPassword",
		  enc.encode(customer.getPassword().getBytes()));
	    cook.setMaxAge(3600*24*365);
	    cook.setPath("/");
	    response.addCookie(cook);
	    response.sendRedirect("LoggedIn.jsp");
	    return;
	} else {
	error = "Invalid Password";
	}
    }
}
%>
<HEAD><TITLE>Please Log In</TITLE></HEAD><BODY>

<FORM METHOD=POST ACTION="Login.jsp">
<INPUT TYPE="HIDDEN" NAME="SUBMITTED" VALUE="T">

<% if (error != null) { %>
<FONT COLOR="#FF0000"><%= error %></FONT><BR>
<% } %>

e-Mail Address: <INPUT NAME="email" TYPE="TEXT" SIZE=50><BR>
Password: <INPUT NAME="password" TYPE="TEXT" SIZE=50><BR>
<INPUT TYPE=SUBMIT>
</FORM>
</BODY>



