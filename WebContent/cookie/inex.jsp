<%@page import="javax.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<br>
	<h1 style="color:skyblue;">CARE_LAB</h1>
	<h3>저희 사이트에 방문해주셔서 감사합니다!!!</h3>
	<%
		Cookie cookie = new Cookie("testcookie","mycookie");
		cookie.setMaxAge(5);//초단위 유지시간
		response.addCookie(cookie);//사용자에게 추가해라
	%>
	<script type="text/javascript">
		window.open("popup.jsp","","width=300,height=200,left=500");
	</script>
</body>
</html>