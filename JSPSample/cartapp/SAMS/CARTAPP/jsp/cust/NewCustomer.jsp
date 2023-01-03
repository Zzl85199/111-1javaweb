<%@ page import="com.bfg.customer.Customer" %>
<jsp:useBean id="newcust" class="com.bfg.customer.Customer" scope="request"/>
<jsp:setProperty name="newcust" property="*"/>

<% 
if (request.getParameter("SUBMITTED") != null) {
    try {
	if (newcust.validateCustomer()) {
	    newcust.createCustomer();
	    response.sendRedirect("NewSuccess.jsp");
	}
    } catch (com.bfg.exceptions.DuplicateEmailAddressException e) {
	newcust.addFieldError("email", 
			      "e-Mail address already in use. <BR>" +
			      "Click <A HREF=\"lostPassword.jsp\">here</A> "+
			      "if you have forgotten your password.");
    }
}
if (newcust.getEmail() == null) {
    newcust.setEmail("");
}
if (newcust.getPassword() == null) {
    newcust.setPassword("");
}
%>
<HEAD><TITLE>Create New Customer Account</TITLE></HEAD><BODY>

<FORM METHOD=POST ACTION="NewCustomer.jsp">
<INPUT TYPE="HIDDEN" NAME="SUBMITTED" VALUE="T">

<% if (newcust.getFieldError("email") != null) { %>
<FONT COLOR="#FF0000"><%= newcust.getFieldError("email")%></FONT><BR>
<% } %>

e-Mail Address: <INPUT NAME="email" TYPE="TEXT" SIZE=50
       VALUE="<%= newcust.getEmail() %>"><BR>

<% if (newcust.getFieldError("password") != null) { %>
<FONT COLOR="#FF0000"><%= newcust.getFieldError("password")%></FONT><BR>
<% } %>

Password: <INPUT NAME="password" TYPE="TEXT" SIZE=50
       VALUE="<%= newcust.getPassword() %>"><BR>
<INPUT TYPE=SUBMIT>
</FORM>
</BODY>


