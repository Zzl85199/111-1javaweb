<%@ page import="com.bfg.customer.Customer" %>
<jsp:useBean id="newuser" class="com.bfg.customer.Customer" scope="request"/>
<jsp:setProperty name="newuser" property="*"/>

<HEAD><TITLE>Create New Customer Account</TITLE></HEAD><BODY>

<% 
if (request.getParameter("SUBMITTED") != null) {
    try {
	newuser.createCustomer();
	%>
User successfully created!
<%
    } catch (com.bfg.exceptions.DuplicateEmailAddressException e) {
	%>
<FONT COLOR=#FF0000>That email address is already in use!</FONT><P>
<%
    }
} else {
    %>
<FORM METHOD=POST ACTION="CreateUser.jsp">
<INPUT TYPE="HIDDEN" NAME="SUBMITTED" VALUE="T">
<INPUT NAME="email" TYPE="TEXT" SIZE=50
       VALUE="<%= newuser.getEmail() %>"><BR>
<INPUT NAME="password" TYPE="TEXT" SIZE=50
       VALUE="<%= newuser.getPassword() %>"><BR>
<INPUT TYPE=SUBMIT>
</FORM>
<%
     }
%>
</BODY>


