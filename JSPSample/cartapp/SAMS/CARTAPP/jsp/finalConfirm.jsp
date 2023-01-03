<%@ include file="/jsp/cust/AutoLogin.jsp" %>
<%@ page import="com.bfg.product.Product" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.bfg.cart.CartItem" %>
<jsp:useBean id="orderaddr" class="com.bfg.customer.Address" scope="session"/>
<jsp:useBean id="ordercredit" class="com.bfg.customer.CreditCard" scope="session"/>
<HEAD>
<TITLE>FInal Confirmation</TITLE>
</HEAD>
<BODY>

<%@ include file="/jsp/includes/bfgheader.jsp" %>
<jsp:useBean id="cart" class="com.bfg.cart.Cart" scope="session"/>
<CENTER><H1>Final Confirmation</H1></CENTER>
<FORM METHOD="POST" ACTION="authorizePurchase.jsp">
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
    <%= item.getQuantity() %>
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
      Total
  </span></TD>
    <TD>
  <span style="font-size: 10.0pt; font-family: Times New Roman">
   <%= cart.getTotalString()%>
  </span></TD></TR>
  <TR><TD>&nbsp;</TD>
  <TD>&nbsp</TD>
  <TD ALIGN="center">
  <span style="font-size: 10.0pt; font-family: Times New Roman">
      Shipping
  </span></TD>
    <TD>
  <span style="font-size: 10.0pt; font-family: Times New Roman">
   <%= cart.getShippingString(orderaddr)%>
  </span></TD></TR>
  <TR><TD>&nbsp;</TD>
  <TD>&nbsp</TD>
  <TD ALIGN="center">
  <span style="font-size: 10.0pt; font-family: Times New Roman">
      Tax
  </span></TD>
    <TD>
  <span style="font-size: 10.0pt; font-family: Times New Roman">
   <%= cart.getTaxString(orderaddr)%>
  </span></TD></TR>
  <TR><TD>&nbsp;</TD>
  <TD>&nbsp</TD>
  <TD ALIGN="center">
  <span style="font-size: 10.0pt; font-family: Times New Roman">
      Order Total
  </span></TD>
    <TD>
  <span style="font-size: 10.0pt; font-family: Times New Roman">
   <%= cart.getGrandTotalString(orderaddr)%>
  </span></TD></TR>
</TABLE>
<P>
The order will be shipped to:<BR>
<%= orderaddr.getFirstName() %> <%= orderaddr.getLastName() %><BR>
<%= orderaddr.getStreet1() %><BR>
<%= orderaddr.getStreet2() %><BR>
<%= orderaddr.getCity() %>, <%= orderaddr.getState() %> <%= orderaddr.getPostalCode() %><P>
And charged to the following credit card:<BR>
<%= ordercredit.getCardOwner() %><BR>
<%= ordercredit.getObscuredNumber() %><P>
<INPUT TYPE=SUBMIT NAME="confirm" VALUE="Confirm Order"><P>
</FORM>

<%@ include file="/jsp/includes/bfgfooter.jsp" %>

</BODY>

