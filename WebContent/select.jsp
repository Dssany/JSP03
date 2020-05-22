<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>select.jsp<br>
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "java", pwd="1234";
	
	Connection con = DriverManager.getConnection(url,id,pwd);
	String sql = "select * from newst";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		out.print(rs.getString("id")+"&nbsp;&nbsp;&nbsp;");
		out.print(rs.getString("name")+"&nbsp;&nbsp;&nbsp;");
		out.print(rs.getString("age")+"<hr>");
	}
	%>
</body>
</html>











