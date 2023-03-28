<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>메인 페이지 입니다.</h1>
	<%
		System.out.print("중간태그");
	%>
	<script>
		console.log("콘솔 태그")
	</script>

	<jsp: forward page="sub.jsp/">
		<!-- 여기서 실행을 멈추고 sub.jsp로 간다. -->

		<%
			System.out.print("중간태그"); /* 밑에꺼는 안뿌리고 sub.jsp로 가서 뿌린다. include는 밑에 다 뿌림. */
		%>                                   <!-- include는 sub.jsp을 갖다 끼우는 거라면 forward는  sub.jsp로 넘ㅓ감 -->
		<h1>꼬리말 입니다.</h1>

		<script>
			console.log("콘솔 태그")
		</script></body>
</html>