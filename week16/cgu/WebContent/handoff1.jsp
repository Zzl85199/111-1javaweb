<jsp:useBean id="handoff" scope="session" class="cgu.User" />
<HTML>
<BODY>
This is the setting page!
<%
    handoff.setFirstName("George");
%>
</BODY>
</HTML>
