<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!String id, pw;%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");

		if (id.equals("abcd") && pw.equals("1234")) {

			session.setAttribute("id", id);
			session.setAttribute("pw", pw);

			response.sendRedirect("welcome_session.jsp"); // redirect는 유저로 하여금 다시 welcome_session.jsp로 접속하게 한다. forward과의 차이점 중요    
		} else {
			response.sendRedirect("login.jsp");
		}
	%>


</body>
</html>