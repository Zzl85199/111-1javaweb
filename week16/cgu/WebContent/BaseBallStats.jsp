<jsp:useBean id="statEngine" scope="session" class="cgu.statBean" />
<HTML><HEAD><TITLE>MLB Player Stats</TITLE></HEAD>
<BODY>
<H1><%= statEngine.processRequest(request, response) %> </H1>
</BODY>
</HTML>


