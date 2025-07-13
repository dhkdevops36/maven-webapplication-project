<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA | DevOps Portal</title>
    <link href="images/kkfunda.jpg" rel="icon">
    <style>
        /* Material-inspired color palette */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            color: #333;
        }

        header {
            background-color: #1976d2;
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        h1 {
            margin: 10px 0;
        }

        section {
            background-color: #ffffff;
            margin: 30px auto;
            padding: 20px;
            width: 80%;
            max-width: 900px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .info-block {
            background-color: #e3f2fd;
            padding: 15px;
            margin-top: 10px;
            border-left: 5px solid #1976d2;
        }

        .contact {
            text-align: center;
            margin-top: 20px;
        }

        .contact img {
            margin-top: 10px;
            border-radius: 50%;
        }

        a {
            color: #0d47a1;
            text-decoration: none;
        }

        footer {
            text-align: center;
            padding: 15px;
            background-color: #eeeeee;
            margin-top: 30px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to KK DevOps</h1>
    <h2>KK FUNDA - Hyderabad</h2>
</header>

<section>
    <h3>Server Information</h3>
    <div class="info-block">
        <% 
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
            out.println("<strong>Server Host Name:</strong> " + inetAddress.getHostName() + "<br>");
            out.println("<strong>Server IP Address:</strong> " + ip + "<br>");
        %>
    </div>

    <h3>Client Information</h3>
    <div class="info-block">
        <% 
            out.print("<strong>Client IP Address:</strong> " + request.getRemoteAddr() + "<br>");
            out.print("<strong>Client Host Name:</strong> " + request.getRemoteHost());
        %>
    </div>
</section>

<section class="contact">
    <img src="images/kkfunda.jpg" alt="KK FUNDA Logo" width="100">
    <p style="font-weight: bold;">
        KK FUNDA<br>
        Martha Halli, Bangalore<br>
        +91-9676831734<br>
        <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a><br>
        <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
    </p>
</section>

<section>
    <h3>Services</h3>
    <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
</section>

<footer>
    <p>KK FUNDA Training & Development Center</p>
    <p>&copy; 2025 by <a href="https://www.google.com/">KK FUNDA</a></p>
</footer>

</body>
</html>
