<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	101 <br>
	nitesh <br>
	88 <br>
	
	<br>
	<br>
	
	<%
		String url = "jdbc:mysql://localhost:3306/jdbcdb";
		String username = "root";
		String pass = "root6";
		String sql = "select * from student where roll_number=1";
	
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con = DriverManager.getConnection(url,username,pass);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		rs.next();
	%>
	
	Rollno : <%= rs.getString(1) %> <br>
	Name : <%= rs.getString(2) %> <br>
	Percentage : <%= rs.getString(3) %>
	
</body>
</html>