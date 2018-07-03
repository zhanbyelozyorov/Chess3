<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Chess$</title>
</head>
<body>
<%
if (request.getAttribute("side") != null){
    int length = Integer.parseInt((request.getAttribute("side").toString()));
    if(length > 26 || length < 2){
        %><h1 style="color:red;">Enter a number greater than 1 but not more than 26!</h1><%
    }
}
%>
<form METHOD="POST">
    <table  border="0" cellpadding="5">
        <tr>
            <td><input TYPE="submit" name="drow" value="Draw a chessboard"
                       style="background-color:#40c373; height:20px"></td>
            <td><input type="number" name="chess_size" min="2" max="26"></td>
        </tr>
    </table>
</form>
</body>
</html>
