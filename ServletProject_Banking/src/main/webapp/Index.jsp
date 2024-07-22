<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Servlet Bank of India</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('path/to/your/background.jpg') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h1 {
        color: #333;
    }

    h2 a {
        color: #0066cc;
        text-decoration: none;
        display: inline-block;
        margin: 10px 0;
        padding: 10px 20px;
        border: 2px solid #0066cc;
        border-radius: 5px;
        transition: all 0.3s ease;
    }

    h2 a:hover {
        background-color: #0066cc;
        color: #fff;
    }
</style>
</head>
<body>
<div class="container">
    <h1>WELCOME TO OUR SERVLET BANK OF INDIA</h1>
    <form action="">
        <h2>
            <a href="addAccount.jsp">CREATE NEW ACCOUNT</a>
        </h2>
        <h2>
            <a href="visit.jsp">VISIT EXISTING ACCOUNT</a>
        </h2>
    </form>
</div>
</body>
</html>
