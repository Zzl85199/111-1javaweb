<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% int cols= Integer.parseInt(request.getParameter("cols"));
   int rows= Integer.parseInt(request.getParameter("rows"));
   int k=0;
%>
<table width="387" cellspacing="0" border="1">
	<%for(int i=1;i<=rows;i++){%>	
	<tr>
		<%for(int j=1;j<=cols;j++){ %>
			<td><%=j+k%></td>
		<%} 
		k+=cols;
		%>
	</tr>
	<%} %>
</table>
</body>
</html>