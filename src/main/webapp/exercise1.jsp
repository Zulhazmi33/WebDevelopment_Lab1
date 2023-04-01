<%-- 
    Document   : exercise1
    Created on : 29 Mar 2023, 12:19:21 am
    Author     : Hazmi33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            var radius = prompt("Please enter the radius..!");
            
            var area = 3.14 * Math.pow(radius,2);
            
            alert("The area of circle = "+area);
        </script>
        
    </body>
</html>
