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
			cookie.setMaxAge(60);/* 60�� �ڿ��� ������. �ѽð� ���� ���������� �����ض�.*/ /* if�κ� :  ��Ű ����  */

			response.addCookie(cookie);
			response.sendRedirect("welcome.jsp"); // redirect�� ������ �Ͽ��� �ٽ� welcome.jsp�� �����ϰ� �Ѵ�. forward���� ������ �߿�    
		} else {
			response.sendRedirect("login.jsp");
		}
	%>


</body>
</html>