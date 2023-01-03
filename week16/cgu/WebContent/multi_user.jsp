<jsp:useBean id="user" scope="session" class="cgu.User" />
<jsp:useBean id="user1" scope="session" class="cgu.User" />
<jsp:setProperty name="user" property="*" />
<jsp:setProperty name="user1" property="*" />
<BODY>
<H1>Validating New User Data</H1>
<% 
    if (user.isValidUserData()) {
%>
<H2>User Data Validated</H2><BR>
user = <%= user.getLastName() %>
user1 = <%= user1.getLastName() %>
<% } else { %>
<H2>Missing Either Last or First Name</H2>
     <% } %>
</BODY>