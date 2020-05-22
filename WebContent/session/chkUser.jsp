<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
<%
	String id = "1",pwd="1",nickname="홍길동";
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		session.setAttribute("logUser", nickname);
		session.setMaxInactiveInterval(20);
		response.sendRedirect("login.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}
%>


</body>
</html>