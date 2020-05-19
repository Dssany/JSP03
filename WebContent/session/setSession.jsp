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
		session.setAttribute("id", "test");
		session.setAttribute("age", "23");
		session.setAttribute("key", "a1234");
	%>
	<h1>세션 설정이 완료되었습니다!</h1>
	<a href="getSession.jsp">getSession.jsp 이동</a>&nbsp;&nbsp;
	<a href="delSession.jsp">delSession.jsp 이동</a>
</body>
</html>