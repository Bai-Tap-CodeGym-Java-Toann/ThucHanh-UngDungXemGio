<%--
  Created by IntelliJ IDEA.
  User: Surface Pro 4
  Date: 2018/10/24
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Time Zone</title>
</head>
<style type="text/css">
    select{
        width: 200px;
        height: 20px;
    }
</style>
<body>
<%
    if (request.getAttribute("change")!=null){
    out.print("<script>\n" +
            "document.getElementById(\"locale\").innerHTML+=\"<input type=\\\"hidden\\\" value=\\\"Asia/Ho_Chi_Minh\\\">\";"+
            "    document.getElementById('locale').submit()\n" +
            "</script>");
}
%>
<h2>${city} time: ${date}</h2>
<br>
<form id="locale" method="post">
    <select name="city" onchange="document.getElementById('locale').submit()">
        <option value="${city}">Select a city</option>
        <option value="Asia/Ho_Chi_Minh">Ho Chi Minh</option>
        <option value="Singapore">Singapore</option>
        <option value="Asia/Hong_Kong">Hong Kong</option>
        <option value="Asia/Tokyo">Tokyo</option>
        <option value="Asia/Seoul">Seoul</option>
        <option value="Europe/London">London</option>
        <option value="Europe/Madrid">Madrid</option>
        <option value="America/New_York">New York</option>
        <option value="Australia/Sydney">Sydney</option>
        <option value="Argentina/Buenos_Aires">Buenos Aires</option>
    </select>
</form>
</body>
</html>
