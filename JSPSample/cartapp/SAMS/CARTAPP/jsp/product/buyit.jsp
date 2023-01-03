<%@ include file="/jsp/cust/AutoLogin.jsp" %>
<%@ page import="com.bfg.product.Product" %>
<%@ page import="com.bfg.cart.Cart" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.text.NumberFormat" %>

<jsp:useBean id="cart" class="com.bfg.cart.Cart" scope="session"/>

<% 
Enumeration names = request.getParameterNames();
NumberFormat nf = NumberFormat.getInstance();
while (names.hasMoreElements()) {
    String name = (String) names.nextElement();
    if (name.startsWith("ISBN")) {
	String ISBN = name.substring(4);
	if ((request.getParameter(name) != null) &&
	    (request.getParameter(name).length() > 0)) {
	    try {
		int quantity = nf.parse(request.getParameter(name)).intValue();
		if (quantity > 0) {
		    out.print("Looking for " + ISBN + "<BR>");
		    Product prod = Product.findProduct(ISBN);
		    if (prod != null) {
			cart.addItem(prod, quantity);
		    }
		}
	    } catch (NumberFormatException e) {
	    }
	}
    }
}
%>
<SCRIPT>
if (window.opener && !window.opener.closed)
  window.opener.location.reload();
window.close();
</SCRIPT>
