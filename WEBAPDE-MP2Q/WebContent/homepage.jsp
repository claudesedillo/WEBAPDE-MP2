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
        
        <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
        
        <link rel = "stylesheet" type="text/css" href="css/homepage.css">
        

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>   
      
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.1.20/jquery.fancybox.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.1.20/jquery.fancybox.min.js"></script>      
    </head>
    
    <body>
      <script> 
             function showLogin () {
               $("#logindiv").slideToggle();
               $("#signupdiv").slideUp();
                
            }
            
            function showSignUp () {
                $("#signupdiv").slideToggle();
                $("#logindiv").slideUp();
            }
        

        </script>
        

       <div class = "rightpane">
            <i class="material-icons" id="magglass">search</i>
            <form><input type="text" id="searchbox"></form>
                
            
            <p id="title">NYEAAAM</p>
                
             <div id = "logindiv">
                <form action="login" method="POST">
                    <p id="usernamet">USERNAME</p>
	                <input type="text" id="username" name="username"> <br> 
	                
	                <p id="passwordt">PASSWORD</p>
	                <input type="password" id="password" name="password"><br>
	                
	                <!-- Add remember tag on this spot for cookies -->	   
	                 <input type="checkbox" name="remember" class="filled-in" id="filled-in-box" checked="checked" />
      <label for="filled-in-box">Remember moi</label>             
	                <input type="submit" value="login"> <!-- This is the button, para ma send data to servlet -lex -->
                </form>
            </div>
                
               <div id="signupdiv">
                <form method="POST" action="register"> 
                	<!-- If any tags will share the same id, just use a class. ID's are supposed to be unique and it may cause some problems in the future -lex -->
                    <p id="usernamet">USERNAME</p><input type="text" id="username" name="username"> 
                    <p id="usernamet">PASSWORD</p><input type="password" id="password" name="password"> 
                    <p id="usernamet">DESCRIPTION(OPTIONAL):</p> <input type="text" id="description" name="desc"> <br> <!-- This is new and needed -lex -->
                	<input type="submit" value="Sign up"> <!-- This is the button, para ma send data to servlet -lex -->
                </form>
                
                </div>
            
            <a class="waves-effect waves-light btn" id="loginb" onclick="showLogin()">Login</a> <br>
            <a class="waves-effect waves-light btn" id="signupb" onclick="showSignUp()">Sign up</a>
        
            <p id="cite"> © 2017 IDK</p>

        </div>
        
        <div id = "hfeed">
           <a data-fancybox="gallery" href="#wrapper"><img src="img/public/1.jpg" id="pic1"></a> <a data-fancybox="gallery" href="#wrapper"><img src="img/public/2.jpg" id="pic1"></a> <a data-fancybox="gallery" href="#wrapper"><img src="img/public/3.jpg" id="pic1"></a>  <a data-fancybox="gallery" href="#wrapper"><img src="img/public/4.jpg" id="pic1"></a>  <a data-fancybox="gallery" href="#wrapper"><img src="img/public/5.jpg" id="pic1"></a>  
        </div>

        <div id="wrapper">
            <img src="img/public/1.jpg" id="pic4" width="450px"> <br>
            <li class="divider"></li>  
            <p id="caption"><span id="unc">admin</span> <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Help moi ang hirap ng MP jusko my pamilee are the most important persons in my layp.</p>
            <li class="divider"></li>  
        </div>
    
    
    </body>
</html>