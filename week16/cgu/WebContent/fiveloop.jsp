 <HTML>
 <HEAD><TITLE>Hello World!</TITLE></HEAD>
 <BODY>
 <%
   int i = 0;
   while (i++ < 8) {
 %> 
  Hello World! Loop #
 <% 
     out.print(i); 
%>
  <br>
 <% } %>

</BODY>
</HTML>
