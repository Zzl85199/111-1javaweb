<%@ page import="com.bfg.customer.Customer" %>
<% 
Customer c = Customer.findCustomer("turner@blackbear.com");
c.sendPasswordReminder();
%>
