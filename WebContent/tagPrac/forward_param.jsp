<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		String id, pw;
	%>

	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
	%>

	아이디 :
	<%=id%>
	<br> 패스워드 :
	<%=pw%>
	<br>





</body>
</html>