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
	Cookie cookie = new Cookie("testCookie","myCookie");
	cookie.setMaxAge(10);//초단위 유지시간
	response.addCookie(cookie);//사용자에게 넘겨라
	
	%>
	<script type="text/javascript">
	window.close();
	</script>
	
</body>
</html>