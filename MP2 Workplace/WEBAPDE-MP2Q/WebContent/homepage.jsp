<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    	<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
    	<title>Insert title here</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
        <!--Import materialize.css-->
        <link rel="stylesheet" type="text/css" href="materialize/css/materialize.css">
        <link rel="stylesheet" type="text/css" href="materialize/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
        <link rel = "stylesheet" type="text/css" href="css/homepage.css">
        

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
    </head>
    
    <body>
    	
        
        <!--Import jQuery before materialize.js -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

        <script>            
            function showLogin () {
               $("#logindiv").slideToggle();
                
            }
            
            function showSignUp () {
                $("#signupdiv").slideToggle();
            }
        </script>
        
        <!-- This is an expression language, prevents to go to this page if user is already logged in. -lex -->
        <%if(session.getAttribute("un")!=null)
			request.getRequestDispatcher("alreadyLogged.jsp").forward(request, response);
		%>
        

        <div class = "rightpane">
            <i class="material-icons" id="magglass">search</i>
            <form><input type="text" id="searchbox"></form>
                
            
            <p id="title">IDK</p>
                
            <div id = "logindiv">
                <form action="login" method="POST">
                    <p id="usernamet">USERNAME</p>
	                <input type="text" id="username" name="username"> <br> 
	                
	                <p id="passwordt">PASSWORD</p>
	                <input type="password" id="password" name="password"><br>
	                
	                <!-- Add remember tag on this spot for cookies -->	                
	                <input type="submit" value="login"> <!-- This is the button, para ma send data to servlet -lex -->
                </form>
            </div>
                
                
            <div id="signupdiv">
                <form method="POST" action="register"> 
                	<!-- If any tags will share the same id, just use a class. ID's are supposed to be unique and it may cause some problems in the future -lex -->
                    <p id="usernamet">NAME</p><input type="text" id="name" name="name"> <br> 
                    <p id="usernamet">USERNAME</p><input type="text" id="username" name="username"> 
                    <p id="usernamet">PASSWORD</p><input type="password" id="password" name="password"> 
                    <p id="usernamet">Description(Optional):</p> <input type="text" name="desc"> </br> <!-- This is new and needed -lex -->
                	<input type="submit" value="Sign up"> <!-- This is the button, para ma send data to servlet -lex -->
                </form>
                
                </div>
            
            <a class="waves-effect waves-light btn" id="loginb" onclick="showLogin()">Login</a> <br>
            <a class="waves-effect waves-light btn" id="signupb" onclick="showSignUp()">Sign up</a>
        
            <p id="cite"> © 2017 IDK</p>

        </div>
        
        <div id = "hfeed">
            <img src="img/Screen%20Shot%202017-07-23%20at%202.32.32%20PM.png" id="pic1">
            <img src="img/Screen%20Shot%202017-07-26%20at%2011.04.59%20PM.png" id="pic2">
            <img src="/img/Screen%20Shot%202017-07-26%20at%2011.05.12%20PM.png" id="pic3">
          
        </div>
    

    </body>
</html>