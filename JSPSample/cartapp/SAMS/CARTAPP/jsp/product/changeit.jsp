<%@ include file="/jsp/cust/AutoLogin.jsp" %>
<%@ page import="com.bfg.product.Product" %>
<%@ page import="com.bfg.cart.Cart" %>
<%@ page import="com.bfg.cart.CartItem" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.text.NumberFormat" %>

<jsp:useBean id="cart" class="com.bfg.cart.Cart" scope="session"/>

Enumeration names = request.getParameterNames();
NumberFormat nf = NumberFormat.getInstance();
while (names.hasMoreElements()) {
    String name = (String) names.nextElement();
    out.print(name);
    if (name.startsWith("ISBN")) {
	String ISBN = name.substring(4);
	Product prod = Product.findProduct(ISBN);
	if (prod != null) {
	    CartItem item = cart.getItem(prod);
	    if (item != null) {
		if ((request.getParameter(name) != null) &&
		    (request.getParameter(name).length() > 0)) {
		    try {
			int quantity = nf.parse(request.getParameter(name)).intValue();
			if (quantity >= 0) {
			    item.setQuantity(quantity);
			}
		    } catch (NumberFormatException e) {
		    }
		}
	    }
	}
    }
}
%>
<SCRIPT>
if (window.opener && !window.opener.closed)
  window.opener.location.reload();
//window.close();
</SCRIPT>
