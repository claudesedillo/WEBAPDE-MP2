<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
        
         <link rel = "stylesheet" type="text/css" href="css/userfeed.css">

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        
      
</head>
<body>
 	  <div id="header">
              <a class="dropdown-button btn" href='#' data-activates="menu" id="dropmenu"> <i class="material-icons" id="icon">menu</i></a>

              <!-- menu contents -->
              <ul id="menu" class='dropdown-content'>
                  <li><a href="userfeed.jsp">home</a></li>
                  <li><a href="profile.html">profile</a></li>
                  <li><a href="logout">logout</a></li> <!-- Redirects to logout servlet. -->
              </ul>
        
    
        </div>
        
        <!-- This is a test, you can use this for showing attributes from the session. -->
        <h1>THIS IS THE HOMEPAGE THINGY!!</h1> <br>
			Username: ${sessionScope.un} <br>
      
        <div id="feed">
            <div id="picwrapper">
                <img class="materialboxed" src="img/000018.JPG" width="500px" id="pic1"> <br>
                <li class="divider"></li>    
            </div>
            
            <div id="picwrapper">
                <img class="materialboxed" src="img/00660003.jpg" width="500px" id="pic1"> <br>
                <li class="divider"></li>    
            </div>

        </div>

</body>
</html>