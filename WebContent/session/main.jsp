<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>
	<h1 style="color:skyblue;">CARE_LAB</h1>
	<H3>메인화면입니다</H3>
	
	<%
	if(session.getAttribute("logUser")==null){
		response.sendRedirect("login.jsp");
	}else{%>
	<%=session.getAttribute("logUser") %>님 로그인상태입니다<br>
	즐거운 시간 되세요!!
	<button type="button" onclick="location.href='logout.jsp'">로그아웃</button>
	<button type="button" onclick="location.href='chkUser.jsp'">로그인 페이지</button>
	<%} %>
</body>
</html>