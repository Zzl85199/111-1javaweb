<%@ include file="/jsp/cust/AutoLogin.jsp" %>
<%@ page import="com.bfg.product.Product" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.bfg.cart.CartItem" %>

<head>
<title>Your Shopping Cart</title>
</head>

<%@ include file="/jsp/includes/bfgheader.jsp" %>
<jsp:useBean id="cart" class="com.bfg.cart.Cart" scope="session"/>


    <h2 align="center">Your Shopping Cart</h2>

<FORM METHOD="POST" ACTION="changeit.jsp" TARGET="tempwindow">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <th width="38%" height="23" align="left">Title</th>
    <th width="11%" height="23" align="left">Price</th>
    <th width="28%" height="23" align="center">Quantity</td>
    <th width="23%" height="23" align="left">Total</th>
  </tr>
    <%
    Iterator iter = cart.getItems();
    while (iter.hasNext()) {
	CartItem item = (CartItem) iter.next();
	Product prod = item.getProduct();
%>
  <tr>
    <td width="38%" bgcolor="#00FFFF">
    <font style="font-size: 10.0pt; font-family: Times New Roman">
        <A HREF="product/Product.jsp?ISBN=<%= prod.getISBN() %>">
        <%= prod.getTitle() %></A>
    </span><BR><BR></td>
    <td width="11%" bgcolor="#00FFFF">
    <span style="font-size: 10.0pt; font-family: Times New Roman">
    <%= prod.getPriceString() %>
    </span></td>
    <td width="28%" bgcolor="#00FFFF">
    <p align="center"><font size="2">
 <% if (item.isPromotionItem()) { %>
    <%= item.getQuantity() %>
<% } else { %>
    <INPUT NAME="ISBN<%= prod.getISBN() %>" TYPE="TEXT" SIZE=2
    value=<%= item.getQuantity() %>>
<% } %>
    </font></td>
    <td width="23%" bgcolor="#00FFFF">
    <span style="font-size: 10.0pt; font-family: Times New Roman">
    <%= item.getLineItemPriceString() %>
    </span></td>
  </tr>
       <% } %>
  <TR><TD COLSPAN=4><HR></TD></TR>
  <TR><TD>&nbsp;</TD>
  <TD>&nbsp</TD>
  <TD ALIGN="center">
  <span style="font-size: 10.0pt; font-family: Times New Roman">
      Total*
  </span></TD>
    <TD>
  <span style="font-size: 10.0pt; font-family: Times New Roman">
   <%= cart.getTotalString()%>
  </span></TD></TR>
</TABLE>
<P>
<INPUT TYPE=SUBMIT NAME="update" VALUE="Update Order">
<INPUT TYPE=SUBMIT NAME="checkout" VALUE="Check Out"><P>
* - Total does not include shipping and/or taxes.
</FORM>

<%@ include file="/jsp/includes/bfgfooter.jsp" %>
