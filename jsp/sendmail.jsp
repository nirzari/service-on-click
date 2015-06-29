<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
   // Recipient's email ID needs to be mentioned.
   //String to = request.getParameter("email");
   String to = "dhyeya007@yahoo.co.in";

   // Sender's email ID needs to be mentioned
   String from = "serviceonclick@gmail.com";
   String pass="nirzari18";

   // Assuming you are sending email from localhost
   String host = "smtp.gmail.com";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);

 	properties.setProperty("mail.transport.protocol", "smtp");
    properties.setProperty("mail.smtp.auth", "true");
    properties.setProperty("mail.smtp.starttls.enable", "false");
    properties.setProperty("mail.user", from);
    properties.setProperty("mail.password", pass);
    properties.setProperty("mail.port", "465");
	
	  // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);

   try{
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("Quotes for you");

      // Send the actual HTML message, as big as you like
      message.setContent("<p>Hello User. We have found the following quotes that best matches your request.</p><br/><br/>","text/html" );
      // Send message
      Transport.send(message);
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>
<html>
<head>
<title>Send HTML Email using JSP</title>
</head>
<body>
<center>
<h1>Send Email using JSP</h1>
</center>
<p align="center">
<% 
   out.println("Result: " + result + "\n");
%>
</p>
</body>
</html>