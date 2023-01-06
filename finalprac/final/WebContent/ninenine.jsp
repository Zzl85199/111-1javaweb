<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
<%
	for(int i=1;i<=9;i++){
		for(int j=1;j<=9;j++){
			out.println(i+"x"+j+"="+i*j);
%>
<br>
<% 
		}
	}	
%>

</body>
</html>