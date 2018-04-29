<%--
  Created by IntelliJ IDEA.
  User: dangkhoa
  Date: 29/04/2018
  Time: 09:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Future Value</title>
</head>
<body>
<%
    double inventment = Double.parseDouble(request.getParameter("inventment"));
    double rate = Double.parseDouble(request.getParameter("rate"));
    int year = Integer.parseInt(request.getParameter("year"));
    double total = 0;
    for (int i = 0; i < year; i++) {
        total += inventment + (inventment * rate * 0.1);
    }
%>
<h2>Funture Value Caculator</h2><br>
Inventment Amount: <%=inventment%><br>
Yearly Interest Rate: <%=rate%><br>
Number of Years: <%=year%><br>
Interest: <%=total%>
</body>
</html>
