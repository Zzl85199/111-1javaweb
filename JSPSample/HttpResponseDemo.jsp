<% 
String arg = "default";
if (request.getParameter("arg") != null) {
    arg = request.getParameter("arg");
}

if (arg.equals("redirect")) {
    response.sendRedirect("http://www.cnn.com/");
} else if (arg.equals("xml")) {
    response.setContentType("text/xml");
%>
<Vegetable>
  <Name>Carrot</Name>
  <Color>Orange</Color>
  <Consumer>Bugs Bunny</Consumer>
</Vegetable>
<% 
     } else {
    response.sendError(HttpServletResponse.SC_NOT_FOUND, 
		       "There's No Such Page!");
     }
%>




