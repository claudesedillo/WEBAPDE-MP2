<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="jquery-3.2.1.min.js"></script>
	<style>
		img{
     		width: 800px;
            height: 800px;
         }   
</style>
<meta charset="ISO-8859-1">
</head>
<body>
 	<form>
       <p>Select a file</p>
       <input type="file" name="pic" accept="image/*" onchange="readURL(this);">
    </form>
    <img id="image" src="default.gif" alt="your image" />
    <script>
       function readURL(input) {
         if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
           $('#image')
           	.attr('src', e.target.result)
          	.width(800)
            .height(800);
           };
         reader.readAsDataURL(input.files[0]);
         }
       }
    </script>
</body>
</html>