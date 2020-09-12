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
		String jobtitle=request.getParameter("jobtitle"); 
		String JobLocation=request.getParameter("joblocation");
		String JobType=request.getParameter("jobtype");
		String JobDescription=request.getParameter("jobdescription");
		out.println(jobtitle);
		out.println(JobLocation);
		out.println(JobType);
		out.println(JobDescription);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitathon","root","1234");
			Statement st=con.createStatement();
			st.executeUpdate("insert into post_job(jobtitle,joblocation,jobtype,jobdescription) values('"+jobtitle+"'+'"+JobLocation+"'+'"+JobType+"'+'"+JobDescription+"')");
		%>
			<script type="text/javascript">
				echo("JOB POSTED SUCCESSFULLY!!!!");
			</script>
		<%
		}
		catch(Exception ex)
		{
			out.println("Exception: "+ex);
		}
		
	 %>
</body>
</html>