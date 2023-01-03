<%@ include file="/jsp/cust/AutoLogin.jsp" %>
<%@ page import="com.bfg.product.Product" %>
<%@ page import="com.bfg.cart.Cart" %>
<% Product prod = null;
if (((request.getParameter("ISBN") != null) &&  
     (prod = Product.findProduct(request.getParameter("ISBN"))) != null)) {
%>
<head>
<title><%= prod.getTitle() %></title>
</head>

<%@ include file="/jsp/includes/bfgheader.jsp" %>

<h2 align="center"><span style="font-family: Times New Roman">
<%= prod.getTitle() %>
</span></h2>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="639" id="AutoNumber3">
 <tr>
   <td width="128">
    <img border="0" src="/bfg/jsp/images/products/<%= prod.getISBN() %>.jpg"
         align="left" width="125" height="155">
   </td>
   <td valign="top" width="511">
     <p align="center">
     <span style="font-size: 10.0pt; font-family: Times New Roman">
        By <%= prod.getAuthorString() %>
     </span></p>
        <p align="center"><font size="2" face="Times New Roman">Publication 
        date: </font>
        <span style="font-size: 10.0pt; font-family: Times New Roman">
         <%= prod.getPubDateString() %>, <%= prod.getPriceString() %></span></td>
   </tr>
</table>
<p><span style="font-size: 10.0pt"><%= prod.getDescription() %></span></p>
    <p><font size="2"><a href="buyit.jsp?ISBN=<%= prod.getISBN() %>" TARGET="tempwindow">[Buy It!]
</a></font></p>
<p align="center">&nbsp;</td>

<%@ include file="/jsp/includes/bfgfooter.jsp" %>
<% } else {%>

<head>
<title>ISBN Not Found</title>
</head>

<%@ include file="/jsp/includes/bfgheader.jsp" %>

<H1>The requested ISBN was not found.</H1>
If you believe you have reached this page in error, please contact
<A HREF="mailto: info@bfgbooks.com">info@bfgbooks.com</A>
<% } %>
