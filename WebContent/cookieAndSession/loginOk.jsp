<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!String id, pw;%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");

		if (id.equals("abcd") && pw.equals("1234")) {

			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60);/* 60분 뒤에는 날려라. 한시간 동안 웹브라우저에 저장해라.*/ /* if부분 :  쿠키 생성  */

			response.addCookie(cookie);
			response.sendRedirect("welcome.jsp"); // redirect는 유저로 하여금 다시 welcome.jsp로 접속하게 한다. forward과의 차이점 중요    
		} else {
			response.sendRedirect("login.jsp");
		}
	%>


</body>
</html>