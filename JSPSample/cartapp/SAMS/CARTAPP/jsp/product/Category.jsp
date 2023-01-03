<%@ include file="/jsp/cust/AutoLogin.jsp" %>
<%@ page import="com.bfg.product.Product" %>
<%@ page import="com.bfg.product.Category" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.bfg.cart.Cart" %>
<% Category cat = null;
if (((request.getParameter("category") != null) &&  
     (cat = Category.findCategory(request.getParameter("category"))) != null)) {
%>
<head>
<title>Books About <%= cat.getName() %></title>
</head>

<%@ include file="/jsp/includes/bfgheader.jsp" %>
<jsp:useBean id="customer" class="com.bfg.customer.Customer" scope="session"/>
<jsp:useBean id="cart" class="com.bfg.cart.Cart" scope="session"/>


    <h2 align="center">Books About <%= cat.getName() %></h2>
	 <% 
if (cat.getFeaturedProduct() != null) {
    Product feat = cat.getFeaturedProduct();
%>
<table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="639">
      <tr>
        <td width="128">
        <img border="0" src="/bfg/jsp/images/products/<%= feat.getISBN() %>.jpg" align="left" width="113" height="140"></td>
        <td valign="top" width="511">
        <h3 align="center">
        <span style="font-size: 10.0pt; font-family: Times New Roman">
	<%= feat.getTitle() %>
	</span></h3>
        <p align="center">
        <span style="font-size: 10.0pt; font-family: Times New Roman">
	By <%= feat.getAuthorString() %>
	</span></p>
        <p align="center"><font size="2" face="Times New Roman">Publication 
        date: </font>
        <span style="font-size: 10.0pt; font-family: Times New Roman">
	<%= feat.getPubDateString() %>, <%= feat.getPriceString() %>
	</span></td>
      </tr>
    </table>
    <p><span style="font-size: 10.0pt">
    <%= feat.getDescription() %>
    </span></p>
    <p><font size="2">
    <a href="index.htm">[Buy It!]</a></font></p>
    <p align="center">&nbsp;</td>
  </tr>
</table>
    <% } %>
<FORM METHOD="POST" ACTION="buyit.jsp" TARGET="tempwindow">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber4" height="253">
  <tr>
    <th width="38%" height="23" align="left">Title</th>
    <th width="23%" height="23" align="left">Author</th>
    <th width="11%" height="23" align="left">Price</th>
    <th width="28%" height="23" align="center">Quantity</td>
  </tr>
    <%
    Iterator iter = cat.getProducts().iterator();
    while (iter.hasNext()) {
	Product prod = (Product) iter.next();
%>
  <tr>
    <td width="38%" height="38" bgcolor="#00FFFF">
    <span style="font-size: 10.0pt; font-family: Times New Roman">
        <A HREF="Product.jsp?ISBN=<%= prod.getISBN() %>">
        <%= prod.getTitle() %></A>
    </span></td>
    <td width="23%" height="38" bgcolor="#00FFFF">
    <span style="font-size: 10.0pt; font-family: Times New Roman">
       <%= prod.getAuthorString() %>
    </span></td>
    <td width="11%" height="38" bgcolor="#00FFFF">
    <span style="font-size: 10.0pt; font-family: Times New Roman">
    <%= prod.getPriceString() %>
    </span></td>
    <td width="28%" height="38" bgcolor="#00FFFF">
    <p align="center"><font size="2">
    <INPUT NAME="ISBN<%= prod.getISBN() %>" TYPE="TEXT" SIZE=2>
    <INPUT TYPE="SUBMIT" VALUE="Buy">
    </font></td>
  </tr>
       <% }
} else {
%>
<head>
<title>Category Not Found</title>
</head>

<%@ include file="/jsp/includes/bfgheader.jsp" %>

<H1>The requested ISBN was not found.</H1>
If you believe you have reached this page in error, please contact
<A HREF="mailto: info@bfgbooks.com">info@bfgbooks.com</A>
<% } %>
<%@ include file="/jsp/includes/bfgfooter.jsp" %>

  





