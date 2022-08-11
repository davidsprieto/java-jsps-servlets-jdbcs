<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br/>
The time on the server is <%= new java.util.Date() %>
<br/>
<%-- Expression Tests --%>
Converting a string to uppercase: <%= new String("Hello World").toUpperCase() %>
<br/>
25 multiplied by 4 equals: <%= 25*4 %>
<br/>
Is 75 less than 69? <%= 75 < 69 %>

</body>
</html>