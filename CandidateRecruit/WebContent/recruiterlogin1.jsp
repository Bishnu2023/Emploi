<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String USER_NAME=request.getParameter("username");
	String PASSWORD=request.getParameter("password");
	
	out.println(USER_NAME);
	out.println(PASSWORD);
	
	try
	{	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitathon", "root", "1234");
		String Query="SELECT * FROM RECRUITER WHERE USER_NAME=? AND PASSWORD=?";
		PreparedStatement psmt=con.prepareStatement(Query);
		psmt.setString(1,USER_NAME);
		psmt.setString(2,PASSWORD);
		ResultSet rs=psmt.executeQuery();
		if(rs.next())
		{
			response.sendRedirect("recruiterdashboard.html");
		}
		else
		{
			response.sendRedirect("recruiterinvalidlogin.html");
		}
	}
	catch(Exception ex)
	{
		out.println("Exception: "+ex);
	}
%>
</body>
</html>