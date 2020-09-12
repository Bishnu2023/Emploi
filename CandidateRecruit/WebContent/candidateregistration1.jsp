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
		String F_NAME=request.getParameter("firstname");
		String L_NAME=request.getParameter("lastname");
		String DOB=request.getParameter("dob");
		String EMAIL_ID=request.getParameter("email");
		String INSTITUTION=request.getParameter("institution");
		String DEGREE=request.getParameter("degree");
		String DEPARTMENT=request.getParameter("department");
		String GRADUATION_YEAR=request.getParameter("graduationyear");
		String PERMANENT_ADDRESS=request.getParameter("permanentaddress");
		double MOBILENO=Double.parseDouble(request.getParameter("mobileno"));
		
		out.println("Username: "+USER_NAME);
		out.println("\nPassword: "+PASSWORD);
		out.println("\nFirst Name: "+F_NAME);
		out.println("\nLast Name: "+L_NAME);
		out.println("\nDate of Birth: "+DOB);
		out.println("\nEmail Id: "+EMAIL_ID);
		out.println("\nInstitution: "+INSTITUTION);
		out.println("\nDegree: "+DEGREE);
		out.println("\nDepartment: "+DEPARTMENT);
		out.println("\nGraduation Year: "+GRADUATION_YEAR);
		out.println("\nPermanent Address: "+PERMANENT_ADDRESS);
		out.println("\nMobile No: "+MOBILENO);
		
	%>
</body>
</html>