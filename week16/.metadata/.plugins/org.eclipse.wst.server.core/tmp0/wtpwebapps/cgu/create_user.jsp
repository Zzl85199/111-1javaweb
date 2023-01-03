<jsp:useBean id="user" scope="session" class="cgu.User" />
<jsp:setProperty name="user" property="*" />
<BODY>
<H1>Validating New User Data</H1>
<% 
    if (user.isValidUserData()) {
%>
<H2>User Data Validated</H2>
<% } else { %>
<H2>Missing Either Last or First Name</H2>
     <% } %>
</BODY>