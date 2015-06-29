<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cleaner Submit</title>
</head>

<body>

<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import ="java.sql.*" %>
<%
    String a = request.getParameter("howoften");    
    String b = request.getParameter("home");
	String c = request.getParameter("bedrooms");    
	String d = request.getParameter("bathrooms");   
	String e = request.getParameter("area");    
	String f[] = request.getParameterValues("addreq");    
	String g = request.getParameter("whatelse");
	String h = request.getParameter("when");    
	String i = request.getParameter("city");    
	String j = request.getParameter("email");  
	String k = request.getParameter("phone");    
	String ds="";
	for(int z=0;f!= null && z<f.length;z++){
    ds+=f[z]+" ";
	}
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/soc",
            "root", "");
    Statement st = con.createStatement();
	int count=st.executeUpdate("insert into cleanerrequest values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+ds+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')");
	String messg = "Here are your requested quotes:"+'\n';
	if(count!=0)
	{
		
		
	ResultSet rs=st.executeQuery("select * from pro where city='"+i+"' and what='cleaner'");
			if(rs.next())
			{
				rs.beforeFirst();
				while(rs.next())
				{
			
			String za=rs.getString(3);
			String zb=rs.getString(4);
			String zc=rs.getString(5);
			String zd=rs.getString(6);
			String ze=rs.getString(8);
			String zf=rs.getString(9);
			String zg=rs.getString(10);
			String zh=rs.getString(11);
			String zz="\n"+"Name: "+ze+" "+zf+'\n';
			zz+="Address: "+za+'\n'+zb+'\n'+zc+'\n'+zd+'\n';
			zz+="email: "+zg+'\n';
			zz+="contact: "+zh+'\n';
			messg+=zz;
				}
			}
    //Creating a result for getting status that messsage is delivered or not!
    String result;
    // Get recipient's email-ID, message & subject-line from index.html page
    final String to = j;
    final String subject = "Quotes for you";
	
	
    
    // Sender's email ID and password needs to be mentioned
    final String from = "serviceonclick1@gmail.com";
    final String pass = "nirzari18";
 
    // Defining the gmail host
    String host = "smtp.gmail.com";
 
    // Creating Properties object
    Properties props = new Properties();
 
    // Defining properties
    props.put("mail.smtp.host", host);
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.user", from);
    props.put("mail.password", pass);
    props.put("mail.port", "465");
 
    // Authorized the Session object.
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, pass);
        }
    });
 
    try {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);
        // Set From: header field of the header.
        message.setFrom(new InternetAddress(from));
        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
        message.setSubject(subject);
        // Now set the actual message
        message.setText(messg);
        // Send message
        Transport.send(message);
        result = "Your mail sent successfully....";
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send mail....";
    }

	response.sendRedirect("thankyou.jsp");
}    
%>
</body>
</html>