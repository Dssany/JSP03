<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>delSession.jsp<br>
	<%
		//session.removeAttribute("age");
		session.setMaxInactiveInterval(5);//5초후에 모든 세션이 종료된다
		//session.invalidate();//세션바로삭제
	%>


	<h1>세션 삭제 페이지입니다!</h1>
	<a href="setSession.jsp">setSession.jsp 이동</a>&nbsp;&nbsp;
	<a href="getSession.jsp">getSession.jsp 이동</a>

</body>
</html>