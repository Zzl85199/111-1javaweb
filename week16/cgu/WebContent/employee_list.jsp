<HTML>
 <HEAD><TITLE>Employee List</TITLE></HEAD>
 <BODY>
<%@ page import="java.sql.*" %>
<TABLE BORDER=1 width="75%">
<TR><TH>Last Name</TH><TH>First Name</TH></TR>
<%
Connection conn = null;
Statement st = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn =
	DriverManager.getConnection("jdbc:mysql://localhost/test","root","1234");

    st = conn.createStatement();
    rs = st.executeQuery("select * from employees");
    while(rs.next()) {
%>
<TR><TD><%= rs.getString("lname_txt") %></TD>
<TD><%= rs.getString("fname_txt") %></TD></TR>
<%
     }
%>
</TABLE>
<%
} catch (java.sql.SQLException ex) {
    ex.printStackTrace();
    %>
</TABLE>
Ooops, something bad happened:
<%
    } finally {
    if (rs != null) rs.close();
    if (st != null) st.close();
    if (conn != null) conn.close();
    }

%>
</BODY>
</HTML>
