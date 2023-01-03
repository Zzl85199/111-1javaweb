<%@ page import="java.util.Iterator" %>
<%@ page import="com.bfg.cart.Cart" %>
<%@ page import="com.bfg.product.Category" %>
<%@ page import="com.bfg.customer.Customer" %>
<%
{
Cart headercart = (Cart) pageContext.getAttribute("cart", PageContext.SESSION_SCOPE);
Customer cust = (Customer) pageContext.getAttribute("customer", PageContext.SESSION_SCOPE);
%>

<body>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="22%">
    <img border="0" src="/bfg/jsp/images/bfglogo.jpg" width="175" height="168"></td>
    <td width="78%">
    <h1 align="center"><font color="#0000FF">Welcome to Books For Geeks!</font></h1>
    </td>
  </tr>
  <tr>
    <td width="22%">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td width="50%" height="35"><font size="1">
<% if (cust.getEmail() == null) { %>
    Do you have an account?  If so, <A HREF="/bfg/jsp/cust/Login.jsp">Login</A> here.
    Otherwise, click <A HREF="/bfg/jsp/cust/NewCustomer.jsp">here</A> to create an account</A>
<% } else { %>
    Welcome back!
    <% } %><P>
        <font color="#008000">In your 
        cart:<br>
    <%= headercart.countItems() %>
	Item<%= (headercart.countItems() == 1)?"":"s" %> totaling
	<%= headercart.getTotalString() %></font>
        <a href="/bfg/jsp/checkout.jsp">[check out]</a></font></td>
      </tr>
    </table>
    <p>Departments</p>
    <blockquote>
      <h5>
    <% 
Category.loadAllCategories();
Iterator it = Category.getCategories().iterator();
while (it.hasNext()) {
    String catName = (String) it.next();
%>
    <a href="/bfg/jsp/product/Category.jsp?category=<%= catName %>"><%= catName %></a><br>
	 <% 
	 } 
%>
    </h5>
    </blockquote>
    <p><a href="/bfg/jsp/shoppingcart.jsp">View Basket</a><br>
    <a href="/bfg/jsp/checkout.jsp">Check Out</a><br>
    <a href="/bfg/jsp/cust/MyAccount.jsp">My Account</a></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</td>
    <td width="78%" valign="top">
<% } %>
