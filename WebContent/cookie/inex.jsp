<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp 생성<br>
	<h1 style="color:skyblue;">CARE_LAB</h1>
	<H3>저희 사이트에 방문해 주셔서 감사합니다!!!</H3>
	<%
		boolean bool = false;
		Cookie[] cookieArr = request.getCookies();
		for(Cookie c : cookieArr){
			out.print("name : "+c.getName()+"<br>");
			out.print("value : "+c.getValue()+"<hr>");
			if(c.getName().equals("testCookie")){
				bool = true;				
			}
		}
	
		Cookie cookie = new Cookie("testCookie","myCookie");
		cookie.setMaxAge(5);//초단위 유지시간
		response.addCookie(cookie);//사용자에게 넘겨라
	%>
	
	<%if(!bool){ %>
	<script type="text/javascript">
	window.open("popup.jsp","","width=300,height=200,left=500");
	</script>
	<%} %>
</body>
</html>









