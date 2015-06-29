<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Success</title>
<style>
p.desc{font-family:Verdana, Geneva, sans-serif; font-size:14px; font-style:normal;}
</style>
</head>

<body>
<%@ page import ="java.sql.*" %>
<%
    String a = request.getParameter("name");    
    String b = request.getParameter("email");
	String c = request.getParameter("company");    
	String d = request.getParameter("subject");    
	String e = request.getParameter("message");    
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/soc",
            "root", "");
    Statement st = con.createStatement();
	int count=st.executeUpdate("insert into contact values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
	
	if(count!=0)
	{
		out.println("<p class='desc'> Successfully Submitted</p>");
		response.setHeader("Refresh", "5; URL=contact.jsp");
	}
	%>
</body>
</html>