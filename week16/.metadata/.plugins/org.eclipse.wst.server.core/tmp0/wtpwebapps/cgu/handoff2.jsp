<jsp:useBean id="handoff" scope="session" class="cgu.User" />
<HTML>
<BODY>
<H1>This is the getting page!<br>handoff=
<%= handoff.getFirstName() %></H1>
</BODY>
</HTML>
