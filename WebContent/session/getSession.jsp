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
		String id = (String)session.getAttribute("id");
		String age = (String)session.getAttribute("age");
		String key = (String)session.getAttribute("key");
	%>
	
	id : <%=id %><br>
	age : <%=age %><br>
	key : <%=key %><br>
	<h1>세션 확인 페이지입니다!</h1>
	<a href="setSession.jsp">setSession.jsp 이동</a>&nbsp;&nbsp;
	<a href="delSession.jsp">delSession.jsp 이동</a>
</body>
</html>