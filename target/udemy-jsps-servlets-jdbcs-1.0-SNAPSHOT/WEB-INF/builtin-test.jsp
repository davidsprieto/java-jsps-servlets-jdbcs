<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP - Built-In Test Objects</title>
</head>
<body style="text-align: center">

<%-- Determine which browser the user is using --%>
Request user agent: <%= request.getHeader("User-Agent") %>

<br/>

<%-- Determine which language the user is using --%>
Request user language: <%= request.getLocale() %>

</body>
</html>
