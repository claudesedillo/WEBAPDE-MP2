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
        <link rel="stylesheet" type="text/css" href="materialize/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
         <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
        
         <link rel = "stylesheet" type="text/css" href="css/userfeed.css">

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        
      
</head>
<body>
		<div id="tagdiv">
            <p> Add tags:</p>    
            <form method="POST">
             <div id="formdiv">
                  <input type="text" name="myInputs[]" id="tags">
             </div> <i class="material-icons" id="aticon" onClick="addInput('formdiv');">add_circle_outline</i>
        </form>
        
        </div>

 	  <div id="header">
              <a class="dropdown-button btn" href='#' data-activates="menu" id="dropmenu"> <i class="material-icons" id="icon">menu</i></a>

              <!-- menu contents -->
              <ul id="menu" class='dropdown-content'>
              	  <li><a href="logout">logout</a></li>
                  <li><a href="userfeed.jsp">home</a></li>
                  <li><a href="profile.jsp">profile</a></li>
                   <!-- Redirects to logout servlet. -->
              </ul>
              
              
            <i class="material-icons" id="magglass">search</i>
            <form method="get" action="photoSearch"><input type="search" id="searchbox" name="search"></form>
        </div>
        
        <!-- This is a test, you can use this for showing attributes from the session. -->
			Username: ${sessionScope.un} <br>
           
        <div id="feed">
            <div class="picwrapper">
                <img src="img/public/1.jpg" class="pics">
                <p class="un"> alexagnoii</p><i class="material-icons" onclick="showTagDiv()" id="addtag">loupe</i><br><p class="caption">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>   
            </div>
            
            <div class="picwrapper">
                <img src="img/private/1.jpg" width="40%" class="pics">
                <p class="un"> jessganoww</p><i class="material-icons" id="addtag">loupe</i><br><p class="caption">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>   
            </div>
            
            <div class="picwrapper">
                <img src="img/public/2.jpg" width="40%" class="pics">
                <p class="un"> sedillocalaude_</p><i class="material-icons" id="addtag">loupe</i><br><p class="caption">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>   
            </div>
            
            <div class="picwrapper">
                <img src="img/private/2.jpg" width="40%" class="pics">
                <p class="un">jessganoww</p><i class="material-icons" id="addtag">loupe</i><br><p class="caption">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>   
            </div>
            
            <div class="picwrapper">
                <img src="img/public/3.jpg" width="40%" class="pics">
                <p class="un">gabsantiago</p><i class="material-icons" id="addtag">loupe</i><br><p class="caption">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>   
            </div>
            
            <div class="picwrapper">
                <img src="img/private/3.jpg" width="40%" class="pics">
                <p class="un">alexagnoii</p><i class="material-icons" id="addtag">loupe</i><br><p class="caption">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>   
            </div>
            
            <div class="picwrapper">
                <img src="img/public/4.jpg" width="40%" class="pics">
                <p class="un">sedilloclaude_</p><i class="material-icons" id="addtag">loupe</i><br><p class="caption">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>   
            </div>
            
            <div class="picwrapper">
                <img src="img/private/3.jpg" width="40%" class="pics">
                <p class="un">jessganoww</p><i class="material-icons" id="addtag">loupe</i><br><p class="caption">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>   
            </div>
            
            <a href="#" id="showb">show more</a>
            
        </div>
        
        
        
         <script>
            $(function () {
                $(".picwrapper").slice(0, 4).show();
                $("#showb").on('click', function (e) {
                    e.preventDefault();
                    $(".picwrapper:hidden").slice(0, 3).slideDown("slow");
                    if ($(".picwrapper:hidden").length == 0) {
                        $("#showb").fadeOut("fast");
                    } 
                });
              
            });
             
             var ctr = 1;

             function addInput(divName){
                  var newdiv = document.createElement('div');
                  newdiv.innerHTML = " <br><input type='text' name='myInputs[]' id='tags'>";
                  document.getElementById(divName).appendChild(newdiv);
                  counter++;    
            }
             
             function showTagDiv () {
                 console.log("clicked");
                 $("#tagdiv").fadeIn();
             }
    
        </script>
</body>
</html>