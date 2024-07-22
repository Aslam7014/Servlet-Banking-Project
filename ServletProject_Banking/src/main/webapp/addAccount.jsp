<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Servlet Bank of India - Add Account</title>
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
        width: 300px;
    }

    h1 {
        color: #333;
    }

    input[type="number"], input[type="text"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"], input[type="reset"] {
        background-color: #0066cc;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin: 5px;
    }

    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #004c99;
    }
</style>
</head>
<body>
<div class="container">
    <h1>FILL UP THE REQUIRED DETAILS</h1>
    <form action="add" method="post">
        <input type="number" placeholder="Enter your accountNo" name="accountNo">  <br>
        <input type="text" placeholder="Enter account Holder Name" name="accountName">   <br>
        <input type="text" placeholder="Enter your Address" name="address">   <br>
        <input type="number" placeholder="Enter your contactNo" name="contactNo">   <br>
        <input type="submit" value="DONE">
        <input type="reset" value="RESET">
    </form>
</div>
</body>
</html>
