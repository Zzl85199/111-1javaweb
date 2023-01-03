<%@ page import="com.bfg.customer.Customer" %>
<%@ page import="com.bfg.cart.Cart" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="sun.misc.BASE64Decoder" %>


<%
{
  Cart cart = (Cart) pageContext.getAttribute("cart", PageContext.SESSION_SCOPE);
  if (cart == null) {
      cart = new Cart();
      pageContext.setAttribute("cart", cart, PageContext.SESSION_SCOPE);
    }

    String email = null;
    String password = null;
    Cookie cook;

    Customer customer = (Customer) pageContext.getAttribute("customer", PageContext.SESSION_SCOPE);
  if (customer == null) {
       Cookie[] cookies = request.getCookies();
       BASE64Decoder dec = new BASE64Decoder();
       if (cookies != null) {
	   for (int i = 0; i < cookies.length; i++) {
	       if (cookies[i].getName().equals("bfgUsername")) {
		   email = new String(dec.decodeBuffer(cookies[i].getValue()));
	       }
	       if (cookies[i].getName().equals("bfgPassword")) {
		   password = new String(dec.decodeBuffer(cookies[i].getValue()));
	       }
	   }
       }
       if ((email != null) && (password != null)) {
	   Customer c = Customer.findCustomer(email);
	   if ((c != null) && (c.getPassword().equals(password))) {
	       c.setCart(cart);
	       c.fillCart();
	       pageContext.setAttribute("customer",c, PageContext.SESSION_SCOPE);
	   }
       } else {
	   Customer c = new Customer();
	   c.setCart(cart);
	   pageContext.setAttribute("customer", c, PageContext.SESSION_SCOPE);
       }
  }
}

%>
