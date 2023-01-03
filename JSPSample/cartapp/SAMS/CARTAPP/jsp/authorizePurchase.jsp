<%@ include file="/jsp/cust/AutoLogin.jsp" %>
<%@ page import="com.bfg.product.Product" %>
<%@ page import="com.bfg.product.Order" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.bfg.cart.CartItem" %>
<jsp:useBean id="orderaddr" class="com.bfg.customer.Address" scope="session"/>
<jsp:useBean id="ordercredit" class="com.bfg.customer.CreditCard" scope="session"/>
<jsp:useBean id="cart" class="com.bfg.cart.Cart" scope="session"/>
<jsp:useBean id="customer" class="com.bfg.customer.Customer" scope="session"/>
<%
    //if (!cart.authorizeCharge(ordercredit)) {
    //    response.sendRedirect("authorizationFailed.jsp");
    //    return;
}
Order order = new Order(customer, orderaddr, ordercredit, cart);
order.recordOrder();
order.emailReceipt(customer.getEmail());
cart.clear();
pageContext.setAttribute("orderaddr", null, PageContext.SESSION_SCOPE);
pageContext.setAttribute("ordercredit", null, PageContext.SESSION_SCOPE);

%>
<HEAD>
<TITLE>Order Receipt</TITLE>
</HEAD>
<BODY>

<%@ include file="/jsp/includes/bfgheader.jsp" %>
<CENTER><H1>Order Receipt</H1></CENTER>

Thank you for your order, your credit card has been charged
<%= order.getOrderTotalString() %>.  Your order number is
<%= order.getOrderNumber() %>.  Please write down this order number in case you
need to refer to the order at a future date. You will also be receiving a copy of your
receipt via e-Mail.

<%@ include file="/jsp/includes/bfgfooter.jsp" %>
