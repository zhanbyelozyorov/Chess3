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
        width: 500px;
        table-layout: fixed;
    }
    .border1{
        border:4px solid black;
    }
    .border2{
        border:4px solid gray;
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

    .bgroundr1{
        background-color:black;
    }
    .bgroundr2{
        background-color:gray;
    }
    .bgroundr3{
        background-color:white;
    }
    .bgroundr4{
        background-color:yellow;
    }
</style>
<head>
    <title>Chess board</title>
</head>
<body>
<% int length = Integer.parseInt((request.getAttribute("side").toString())); %>
    <table
        <%
        if(length%2 == 0){
            %>
            class="border2"
            <%
        }else {
            %>
            class="border1"
            <%
        }
       %>
    >
    <%
    if (request.getAttribute("side") != null) {
        String side = String.valueOf(100 / length) + '%';
        for (int i = 0; i < length; i++) {
            %><tr><%
            for (int j = 0; j < length; j++) {
                %>
                <td
                <%
                if ((i + j)%2 == 0) {
                    if(length%2 != 0){
                      %>class="bgroundr1"<%
                    }else {
                      %>class="bgroundr2"<%
                    }
                } else {
                    if(length%2 != 0){
                      %>class="bgroundr3"<%
                    }else {
                        %>class="bgroundr4"<%
                    }
                }
                %>
                >
                </td>
                <%
            }
            %>
            </tr>
            <br/>
            <%
        }
    }
    %>
</table>
</body>
</html>
