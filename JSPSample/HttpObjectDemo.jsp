<jsp:useBean id="user" scope="session" class="com.cartapp.user.User" />
<jsp:setProperty name="user" property="*" />
<HTML>
<HEAD>
<TITLE>HttpRequest/HttpResponse Demo</TITLE>
</HEAD>
<BODY>
    <% 
Cookie [] cookies = request.getCookies();
boolean found_cookie = false;

if (cookies != null) {
    for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("cartAppUserName")) {
			user.setUserName(cookies[i].getValue());
			found_cookie = true;
		}
    }
}
if (!found_cookie) {
    if (user.getUserName() != null) {
	Cookie setCookie = new Cookie("cartAppUserName", user.getUserName());
	setCookie.setMaxAge(3600 * 24 * 365);  // Expire in one year
	response.addCookie(setCookie);
	found_cookie = true;
    }
}
if (!found_cookie) {
    %>
<FORM METHOD="POST">
Please Enter Your User Name: <INPUT TYPE="TEXT" NAME="userName"><BR>
<INPUT TYPE="SUBMIT">
</FORM>
<% } else { %>
<H1>Hello <%= user.getUserName() %></H1>
     <% 
     if (request.getAuthType() != null) {
	 %> You don't need to use a secure connection.<p> <%
     } 
     %>
     For your information, your session id is <%= request.getRequestedSessionId() %><p>
     You accessed this page using a <%= request.getMethod() %><p>

     <%
     if (request.isRequestedSessionIdFromURL()) { %>
           You know, using URL rewriting is ugly, turn on cookie support.<p>
     <% } else { %>
           Good, you support cookies, nice choice.<p>
     <% }
 } %>
</BODY>
</HTML>

	
