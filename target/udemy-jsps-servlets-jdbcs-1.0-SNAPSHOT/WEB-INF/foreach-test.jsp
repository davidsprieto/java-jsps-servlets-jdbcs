<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html>
<head>
    <title>forEach Test</title>
</head>
<body style="text-align: center">

<%
    // create some sample data --> normally provided by MVC --> see "ForEachTestServlet" to see how the code is written in the servlet
    String[] cities = {"Chicago", "Milwaukee", "San Diego"};

    session.setAttribute("cities", cities); // can be written as: pageContext.setAttribute("cities", cities); too.
%>

<c:forEach var="city" items="${cities}">
    ${city} <br/>
</c:forEach>

</body>
</html>
