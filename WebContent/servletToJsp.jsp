<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String test = (String)request.getAttribute("Hi");
	String test2 = (String)request.getAttribute("Hi2");
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
서블릿을 통해 호출된 jsp입니다 </br>
<%= test %></br>
<%= test2 %>
</body>
</html>