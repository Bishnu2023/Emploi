<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
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
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitathon","root","1234");
		String query="SELECT * FROM SEEKER WHERE USER_NAME=? AND PASSWORD=?";
		PreparedStatement psmt=con.prepareStatement(query);
		psmt.setString(1,USER_NAME);
		psmt.setString(2,PASSWORD);
		ResultSet rs=psmt.executeQuery();
		if(rs.next())
		{
			response.sendRedirect("candidatedashboard.html");
		}
		else
		{
			response.sendRedirect("candidateinvalidlogin.html");
		}
	}
	catch(Exception ex)
	{
		out.println("Exception: "+ex);
	}
	
	
%>
</body>
</html>