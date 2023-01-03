<jsp:useBean id="user" scope="session" class="cgu.User" />
<BODY>
<H1>Enter New User Data</H1>
<FORM ACTION="multi_user.jsp" METHOD="POST">
Last Name: <INPUT TYPE="TEXT" NAME="lastName"><BR>
First Name: <INPUT TYPE="TEXT" NAME="firstName"><BR>
<INPUT TYPE="SUBMIT">
</FORM>
</BODY>