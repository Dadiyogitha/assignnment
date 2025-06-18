<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList" %>
    <%@ page import="app1.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        table {
            border-collapse: collapse;
            width: 60%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            padding: 8px 12px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2 style="text-align:center;">User List from Database</h2>

<%
   
    ArrayList<User> userList = (ArrayList<User>)session.getAttribute("userList");
    if (userList == null || userList.isEmpty()) {
%>
    <p style="text-align:center;">No users found.</p>
<%
    } else {
%>

<table>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
    </tr>
    <%
        for (User user : userList) {
    %>
    <tr>
        <td><%= user.getName() %></td>
        <td><%= user.getEmail() %></td>
        <td><%= user.getPassword() %></td>
    </tr>
    <%
        }
    %>
</table>

<%
    }
%>
</body>
</html>