<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.io.IOException, java.sql.*, database.Database" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- <link rel="stylesheet" href="style2.css" /> -->
     <link rel = "stylesheet" href = "../CSS/style2.css" /> 
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
      rel="stylesheet"
    />
    <title>ChatWorld</title>
</head>

	<header>

	<a href="#" class="logo">ChatWorld</a>

	<a href="#" class="exit">Exit</a>

	</header>
<body onload = "JavaScript:AutoRefresh(30000);">
   <%
		/*String emailID = (String)session.getAttribute("emailID");
   		System.out.println(emailID);*/
   		
   		String emailID = "";
   		Cookie cook[] = request.getCookies();
		
		for(Cookie c: cook){
			if(c.getName().equals("emailID"))
				emailID = c.getValue();
		}
   		
   		if(emailID == null)
   			response.sendRedirect("404.html");
   
		/*
		if(emailID == ""){
			System.out.println("Works");
			
			Cookie cook[] = request.getCookies();
			
			for(Cookie c: cook){
				if(c.getName().equals("emailID"))
					emailID = c.getValue();
			}
		}
		*/	
		String password = request.getParameter("password");
		/*
		Cookie cookies = new Cookie("emailID", emailID);
		//System.out.println(emailID);
		response.addCookie(cookies);
		*/
		try {
			/*Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "chatApp", "pass");	*/
			ServletContext contx = getServletContext();
			Database db = (Database) contx.getAttribute("database");
			
			if(db == null){
				db = new Database();
			}
			Connection conn = db.getConnection();
			Statement smt = conn.createStatement();
			ResultSet set = smt.executeQuery("select * from posts");
	%>		
			<div class = "post_box" id = "post_box">									
		<%		
			while(set.next()){
		%>			 	 
			<div class = "post" id = "post_id">
				<div class = "post_desc" id = "post_Desc">
					 <%= set.getString(2) %>
				</div>
				<div class = "post_sender" id = "post_Sender">
					<%= set.getString(1) %>
				</div>	
			</div>	
	<%
			}
	%>		 </div>
			<div class = "message_box" id = "send_message">
				<form method = "get" action = "add_post.jsp">
				
					<input type = "text" placeholder = "Enter your message" name = "message"/>
					<button type = "submit" name = "msg_sub" class = "msg_btn">Submit</button>
				</form>
			</div>	
	<%				
		}
		catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
<script src = "../JS/script2.js"></script>
</html>