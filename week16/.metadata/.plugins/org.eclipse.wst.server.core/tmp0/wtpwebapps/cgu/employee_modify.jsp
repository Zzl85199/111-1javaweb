<HTML>
 <HEAD><TITLE>Employee List</TITLE></HEAD>
 <BODY>
<%@ page import="java.sql.*" %>
<%
Connection conn = null;
Statement st = null;
ResultSet rs = null;

try {
    Class.forName("org.gjt.mm.mysql.Driver").newInstance();
    conn =
	DriverManager.getConnection("jdbc:mysql://localhost/cartapp");

    st = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
			      ResultSet.CONCUR_UPDATABLE);
    rs = st.executeQuery("select * from employees");
    while(rs.next()) {
	rs.updateString("lname_txt", "Wilson");
	rs.updateRow();
    } 
    } catch (java.sql.SQLException ex) {
	ex.printStackTrace();
    } finally {
	if (rs != null) rs.close();
	if (st != null) st.close();
	if (conn != null) conn.close();
    }
%>
</BODY>
</HTML>
