<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	String test = (String)request.getAttribute("birth_date");
	String test2 = (String)request.getAttribute("emp_name");
	String test3 = (String)request.getAttribute("gender");
	String test4 = (String)request.getAttribute("hire_date");
	
	%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<H4>이름 : <%= test2 %></H4>
<H4>성별 : <%= test3 %></H4>
<H4>생일 : <%= test %></H4>
<H4>입사일 : <%= test4 %></H4> 

</body>
</html>