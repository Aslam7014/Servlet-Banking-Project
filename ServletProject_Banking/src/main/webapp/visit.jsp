<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>

<h1>Account Details</h1>

<table>
    <tr>
        <th>AccountNo.</th>
        <th>AccountName</th>
        <th>Balance</th>
        <th>ContactNo</th>
        <th>Deposit</th>
        <th>Withdrawal</th>
    </tr>
    <%
        ResultSet rs = (ResultSet) request.getAttribute("result"); %>
      <%   if (rs != null) {
            while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getDouble(3) %></td>
        <td><%= rs.getInt(4) %></td>
        <td><a href="Deposit?accountId=<%= rs.getInt(1) %>">Deposit</a></td>
        <td><a href="Withdraw?accountId=<%= rs.getInt(1) %>">Withdrawal</a></td>
    </tr>
    <%
            }
        } else {
    %>
    <tr>
        <td colspan="6">No account details found.</td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
