<%@ include file="/jsp/cust/AutoLogin.jsp" %>
<%@ page import="com.bfg.customer.Customer" %>
<%@ page import="com.bfg.customer.Address" %>
<%@ page import="com.bfg.customer.CreditCard" %>
<%@ page import="java.text.NumberFormat" %>
<jsp:useBean id="customer" class="com.bfg.customer.Customer" scope="session"/>
<jsp:useBean id="newaddr" class="com.bfg.customer.Address" scope="request"/>
<jsp:useBean id="newcredit" class="com.bfg.customer.CreditCard" scope="request"/>
<% if (customer.getEmail() == null) {
    response.sendRedirect("Login.jsp");
    return;
}
%>
<jsp:setProperty name="newaddr" property="*"/>
<jsp:setProperty name="newcredit" property="*"/>

<% 
NumberFormat nf = NumberFormat.getInstance();
String operation = request.getParameter("operation");
if (operation == null) {
    operation = "create";
}

String cardId = request.getParameter("cardId");
Integer id = null;

if (!operation.equals("update")) {
    newcredit.setCardNumber(request.getParameter("newCardNumber"));
} else {
    if ((cardId != null) && (cardId.length() > 0)) {
	try {
	    Number num = nf.parse(request.getParameter("cardId"));
	    id = new Integer(num.intValue());
	} catch (Exception e) {
	    response.sendRedirect("general_error.jsp");
	    return;
	}
    }

    CreditCard c = (CreditCard) customer.getWallet().get(id);
    if (c.getObscuredNumber().equals(request.getParameter("newCardNumber"))) {
	newcredit.setCardNumber(c.getCardNumber());
    } else {
    newcredit.setCardNumber(request.getParameter("newCardNumber"));
    }
}

if (request.getParameter("SUBMITTED") != null) {
    if (newcredit.validateCreditCard() && newaddr.validateAddress()) {
	if (operation.equals("update")) {
	    CreditCard cc = (CreditCard) customer.getWallet().get(id);
	    if (cc != null) {
		newcredit.setCustomer(customer);
		newcredit.setCardID(id.intValue());
		newcredit.setAddress(newaddr);
		newcredit.setCustomer(customer);
		newaddr.setAddressID(cc.getAddress().getAddressID());
		newaddr.updateAddress();
		newcredit.updateCreditCard();
		customer.getWallet().put(id, newcredit);
		response.sendRedirect("MyAccount.jsp");
		return;
	    } else {
		response.sendRedirect("noaccess.jsp");
		return;
	    }
	}
	else {
	    newaddr.createAddress();
	    newcredit.setAddress(newaddr);
	    newcredit.setCustomer(customer);
	    newcredit.createCreditCard();
	    customer.getWallet().put(new Integer(newcredit.getCardID()),
				     newcredit);
	    response.sendRedirect("MyAccount.jsp");
	    return;
	}
    }
} else {
    if (operation.equals("update")) {
	CreditCard card = (CreditCard) customer.getWallet().get(id);
	if (card != null) {
	    newcredit = card;
	    newaddr = card.getAddress();
	}
    }
}
	

if (newaddr.getLastName() == null) {
    newaddr.setLastName("");
}
if (newaddr.getFirstName() == null) {
    newaddr.setFirstName("");
}
if (newaddr.getStreet1() == null) {
    newaddr.setStreet1("");
}
if (newaddr.getStreet2() == null) {
    newaddr.setStreet2("");
}
if (newaddr.getCity() == null) {
    newaddr.setCity("");
}
if (newaddr.getState() == null) {
    newaddr.setState("");
}
if (newaddr.getPostalCode() == null) {
    newaddr.setPostalCode("");
}

if (newcredit.getCardOwner() == null) {
    newcredit.setCardOwner("");
}

if (newcredit.getCardType() == null) {
    newcredit.setCardType("");
}

if (newcredit.getCardNumber() == null) {
    newcredit.setCardNumber("");
}

%>
<% if (operation.equals("update")) { %>
<HEAD><TITLE>Edit Credit Card</TITLE></HEAD><BODY>
<%     } else {%>
<HEAD><TITLE>Create Credit Card</TITLE></HEAD><BODY>
<% } %>
<%@ include file="/jsp/includes/bfgheader.jsp" %>
<% if (operation.equals("update")) { %>
<CENTER><H1>Edit Credit Card</H1></CENTER>
<%     } else {%>
<CENTER><H1>Create New Credit Card</H1></CENTER>
<% } %>
<FORM METHOD=POST ACTION="NewCreditCard.jsp">
<INPUT TYPE="HIDDEN" NAME="SUBMITTED" VALUE="T">
<INPUT TYPE="HIDDEN" NAME="operation" VALUE="<%= operation %>">
<INPUT TYPE="HIDDEN" NAME="cardId" VALUE="<%= request.getParameter("cardId") %>">

<% if (newcredit.getFieldError("cardOwner") != null) { %>
<FONT COLOR="#FF0000"><%= newcredit.getFieldError("cardOwner")%></FONT><BR>
<% } %>

Name on Card: <INPUT NAME="cardOwner" TYPE="TEXT" SIZE=50
       VALUE="<%= newcredit.getCardOwner() %>"><BR>

<% if (newcredit.getFieldError("cardType") != null) { %>
<FONT COLOR="#FF0000"><%= newcredit.getFieldError("cardType")%></FONT><BR>
<% } %>

Card Type: <SELECT NAME="cardType">
<OPTION VALUE="">---SELECT---
<OPTION VALUE="VISA"
    <%= (newcredit.getCardType().equals("VISA"))?" SELECTED":"" %>>Visa
<OPTION VALUE="MC"
    <%= (newcredit.getCardType().equals("MC"))?" SELECTED":"" %>>MasterCard
<OPTION VALUE="AMEX"
    <%= (newcredit.getCardType().equals("AMEX"))?" SELECTED":"" %>>American Express
<OPTION VALUE="DISC"
    <%= (newcredit.getCardType().equals("DISC"))?" SELECTED":"" %>>Discover
</SELECT><BR>

<% if (newcredit.getFieldError("cardNumber") != null) { %>
<FONT COLOR="#FF0000"><%= newcredit.getFieldError("cardNumber")%></FONT><BR>
<% } %>
<% if (newcredit.getFieldError("expMonth") != null) { %>
<FONT COLOR="#FF0000"><%= newcredit.getFieldError("expMonth")%></FONT><BR>
<% } %>

<% if (newcredit.getFieldError("expYear") != null) { %>
<FONT COLOR="#FF0000"><%= newcredit.getFieldError("expYear")%></FONT><BR>
<% } 
int expMonth = newcredit.getExpMonth();
int expYear = newcredit.getExpYear();
%>


Card Number: <INPUT NAME="newCardNumber" TYPE="TEXT" SIZE=25
       VALUE="<%= 
operation.equals("update")?newcredit.getObscuredNumber():newcredit.getCardNumber() %>"><BR>

Expires: <SELECT NAME="expMonth">
  <OPTION VALUE="">SELECT
  <OPTION VALUE="1" <%= (expMonth == 1)?" SELECTED":"" %>>Jan
  <OPTION VALUE="2" <%= (expMonth == 2)?" SELECTED":"" %>>Feb
  <OPTION VALUE="3" <%= (expMonth == 3)?" SELECTED":"" %>>Mar
  <OPTION VALUE="4" <%= (expMonth == 4)?" SELECTED":"" %>>Apr
  <OPTION VALUE="5" <%= (expMonth == 5)?" SELECTED":"" %>>May
  <OPTION VALUE="6" <%= (expMonth == 6)?" SELECTED":"" %>>Jun
  <OPTION VALUE="7" <%= (expMonth == 7)?" SELECTED":"" %>>Jul
  <OPTION VALUE="8" <%= (expMonth == 8)?" SELECTED":"" %>>Aug
  <OPTION VALUE="9" <%= (expMonth == 9)?" SELECTED":"" %>>Sep
  <OPTION VALUE="10" <%= (expMonth == 10)?" SELECTED":"" %>>Oct
  <OPTION VALUE="11" <%= (expMonth == 11)?" SELECTED":"" %>>Nov
  <OPTION VALUE="12" <%= (expMonth == 12)?" SELECTED":"" %>>Dec
</SELECT> /

<SELECT NAME="expYear">
  <OPTION VALUE="">SELECT
  <OPTION VALUE="2002" <%= (expYear == 2002)?" SELECTED":"" %>>02
  <OPTION VALUE="2003" <%= (expYear == 2003)?" SELECTED":"" %>>03
  <OPTION VALUE="2004" <%= (expYear == 2004)?" SELECTED":"" %>>04
  <OPTION VALUE="2005" <%= (expYear == 2005)?" SELECTED":"" %>>05
  <OPTION VALUE="2006" <%= (expYear == 2006)?" SELECTED":"" %>>06
  <OPTION VALUE="2007" <%= (expYear == 2007)?" SELECTED":"" %>>07
  <OPTION VALUE="2008" <%= (expYear == 2008)?" SELECTED":"" %>>08
  <OPTION VALUE="2009" <%= (expYear == 2009)?" SELECTED":"" %>>09
  <OPTION VALUE="2010" <%= (expYear == 2010)?" SELECTED":"" %>>10
  <OPTION VALUE="2011" <%= (expYear == 2011)?" SELECTED":"" %>>11
  <OPTION VALUE="2012" <%= (expYear == 2012)?" SELECTED":"" %>>12<P>
</SELECT>

<H2>Billing Address</H2><P>

<% if (newaddr.getFieldError("firstName") != null) { %>
<FONT COLOR="#FF0000"><%= newaddr.getFieldError("firstName")%></FONT><BR>
<% } %>

<% if (newaddr.getFieldError("lastName") != null) { %>
<FONT COLOR="#FF0000"><%= newaddr.getFieldError("lastName")%></FONT><BR>
<% } %>

First Name: <INPUT NAME="firstName" TYPE="TEXT" SIZE=30
       VALUE="<%= newaddr.getFirstName() %>">
Last Name: <INPUT NAME="lastName" TYPE="TEXT" SIZE=40
       VALUE="<%= newaddr.getLastName() %>"><BR>

<% if (newaddr.getFieldError("street1") != null) { %>
<FONT COLOR="#FF0000"><%= newaddr.getFieldError("street1")%></FONT><BR>
<% } %>

Street Addr 1: <INPUT NAME="street1" TYPE="TEXT" SIZE=80
       VALUE="<%= newaddr.getStreet1() %>"><BR>
Street Addr 2: <INPUT NAME="street2" TYPE="TEXT" SIZE=80
       VALUE="<%= newaddr.getStreet2() %>"><BR>

<% if (newaddr.getFieldError("city") != null) { %>
<FONT COLOR="#FF0000"><%= newaddr.getFieldError("city")%></FONT><BR>
<% } %>

<% if (newaddr.getFieldError("state") != null) { %>
<FONT COLOR="#FF0000"><%= newaddr.getFieldError("state")%></FONT><BR>
<% } %>

<% if (newaddr.getFieldError("postalCode") != null) { %>
<FONT COLOR="#FF0000"><%= newaddr.getFieldError("postalCode")%></FONT><BR>
<% } %>

City: <INPUT NAME="city" TYPE="TEXT" SIZE=50
       VALUE="<%= newaddr.getCity() %>">
State: <INPUT NAME="state" TYPE="TEXT" SIZE=2
       VALUE="<%= newaddr.getState() %>">
Postal Code: <INPUT NAME="postalCode" TYPE="TEXT" SIZE=10
       VALUE="<%= newaddr.getPostalCode() %>"><BR>

<INPUT TYPE=SUBMIT>
</FORM>
<%@ include file="/jsp/includes/bfgfooter.jsp" %>
