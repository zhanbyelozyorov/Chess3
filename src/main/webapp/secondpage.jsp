<%--
  Created by IntelliJ IDEA.
  User: 2
  Date: 28.06.2018
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<style>
    table {
        width: 100%;
        table-layout: fixed;
    }

    th, td {
        padding: 0;
    }

    th:after,
    td:after {
        content: '';
        display: block;
        margin-top: 100%;
    }
</style>
<head>
    <title>Chess board</title>
</head>
<body>
<table STYLE="border:1px solid #000;">
    <% if (request.getAttribute("side") != null) {

        int length = Integer.parseInt((request.getAttribute("side").toString()));
        String side = String.valueOf(100/length)+'%';
        for (int i = 0; i < length; i++) {
    %>
    <tr><%
        for (int j = 0; j < length; j++) {
    %>
        <td style="
            <% if ((i + j)%2 == 0) {%>
                background-color: black;
            <%} else {
        %>
                background-color: white;
            <%
}
    %>
                "></td>
        <%
            }
        %></tr>
    <br/>
    <%
            }
        }
    %>
</table>
</body>
</html>
