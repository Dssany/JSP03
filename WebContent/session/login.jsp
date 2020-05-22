<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>login.jsp<br>
	<h1 style="color:skyblue;">CARE_LAB</h1>
	<H3>저희 사이트에 방문해 주셔서 감사합니다!!!</H3>
	<%
		boolean bool = false;
		Cookie[] cookieArr = request.getCookies();
		for(Cookie c : cookieArr){
			if(c.getName().equals("testCookie")){
				bool = true;				
			}
		}
	%>
	<%if(session.getAttribute("logUser")==null){%>
			<form action="chkUser.jsp" method="post">
				<input type="text" name="id" placeholder="아이디"><br>
				<input type="text" name="pwd" placeholder="비밀번호"><br>
				<input type="submit" value="로그인">
			</form>
		<%
	}else{%>
		<%=session.getAttribute("logUser")%> 님 로그인상태입니다<br>
		<button type="button" onclick="location.href='main.jsp'">main으로이동</button>
<%}%>
	<%if(!bool){ %>
	<script type="text/javascript">
	window.open("popup.jsp","","width=300,height=200,left=500");
	</script>
	<%} %>
	
</body>
</html>