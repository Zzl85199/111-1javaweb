<jsp:useBean id="user" scope="session" class="com.cartapp.user.User" />
<BODY>
<H1>Enter New User Data</H1>
<FORM ACTION="create_user.jsp" METHOD="POST">
Last Name: <INPUT TYPE="TEXT" NAME="lastName"><BR>
First Name: <INPUT TYPE="TEXT" NAME="firstName"><BR>
<INPUT TYPE="SUBMIT">
</FORM>
</BODY>