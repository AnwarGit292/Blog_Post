 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! Something went wrong... </title>
        
          <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
    
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
               clip-path: polygon(100% 0, 100% 100%, 76% 90%, 48% 100%, 23% 90%, 0 100%, 0 0);
            }
        </style>
        
        
    </head>
    <body>
        
        
        <div class="container text-center">
            <img src="img/error.png" class="img-fluid" >
            <h3>Sorry ! Something went wrong...</h3>
            
            <%= exception%>
            
            <a href="index.jsp" class="btn secondary-background btn-lg text-white mt-3">Home</a>
        </div>
        
        
        
        
    </body>
</html>
