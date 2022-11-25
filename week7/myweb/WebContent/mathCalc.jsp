<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>數學運算</title>
</head>
<body>
	<%
		int l=Integer.parseInt(request.getParameter("len"));
		int w=Integer.parseInt(request.getParameter("wid"));
		int area=l*w;
	%>
	<center><H1>長方形面積計算</H1></center>
	<form name="form1" method="get" action="/myWeb/mathCalc.jsp">
		長:<input type="text" id="len" name="len" value=<%=l %>></p>
	    寛:<input type="text" id="wid" name="wid" value=<%=w %>></p>
	    長*寛=<input type="text" id="area" name="area" value=<%=area %>></p>
	<input type="submit" name="ok" value="執行">
	
	</form>
</body>
</html>