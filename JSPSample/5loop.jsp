 <HTML>
 <HEAD><TITLE>Hello World!</TITLE></HEAD>
 <BODY>
 <%
   int i = 0;
   while (i++ < 5) {
 %> 
  Hello World! Loop #
 <% 
     out.print(i); 
%>
  <br>
 <% } %>

</BODY>
</HTML>
