<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	String test = (String)request.getAttribute("num1");
	String test2 = (String)request.getAttribute("num2");
	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method ="post">
<%= test %>
<%= test2 %>
</form>

</body>
</html>