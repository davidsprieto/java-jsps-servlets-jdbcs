<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html>
<head>
    <title>JSTL Core Tags</title>
</head>
<body style="text-align: center">

<c:set var="time" value="<%= new java.util.Date() %>" />

The time on the server is: ${time}.

</body>
</html>
