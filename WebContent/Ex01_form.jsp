<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	String birth_date = (String)request.getAttribute("birth_date");
	String emp_name = (String)request.getAttribute("emp_name");
	String gender = (String)request.getAttribute("gender");
	String hire_date = (String)request.getAttribute("hire_date");
	
	%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>당신의 정보가 여기에!</title>
</head>
<body>

<table border="1">
		<tr>
		<th> 이름 </th>
		<th> 성별 </th>
		<th> 생일 </th>
		<th> 입사일 </th>
	</tr>
		
		<tr>
			<td> <%= emp_name %> </td>
			<td> <%= gender %> </td>
			<td> <%= birth_date %> </td>
			<td> <%= hire_date %> </td>
		</tr>


	</table>

</body>
</html>