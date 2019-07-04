<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫 jsp파일</title>
</head>
<body>
안녕하세요오오옹^3^<br>
<% 
for(int i = 5; i > 1; i--){
	out.println("<h" + i + ">");
	out.println("안녕하세요오옹^3^");
	out.println("</h>");
	//out.println("<br>");
}
%>
<h1> 내가 누구게</h1>
<table border="1">
		<tr>
			<th>이름</th>
			<th>주소</th>
			<th>휴대폰번호</th>
		</tr>
		<tr>
			<th>
				  전나현  <input type="radio" name="bt1" value="1">

				  전나봉  <input type="radio" name="bt1" value="2">
			</th>
			<th>
				  22살  <input type="radio" name="bt2" value="1">
				  23살  <input type="radio" name="bt2" value="2">
			</th>
			<th>
				  010-5795-6030  <input type="radio" name="bt3" value="1">
				  010-5779-6030  <input type="radio" name="bt3" value="2">
			</th>
		</tr>
		<tr>
			<th colspan="3" align="center">
			<input type = "button" name = "end" value = "답안 제출하기" onclick="alert('땡~~!')">
			</th>
		</tr>

	</table>


</body>
</html>