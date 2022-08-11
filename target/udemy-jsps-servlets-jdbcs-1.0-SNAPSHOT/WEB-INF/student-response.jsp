<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Response</title>
</head>
<body>

The student is confirmed - Name: <%= request.getParameter("firstName") + " " + request.getParameter("lastName") + ", Country: " + request.getParameter("country") %>
<br/>
<%-- THE ABOVE CODE CAN ALSO BE WRITTEN AS --%>
The student is confirmed - Name: ${param.firstName} ${param.lastName}, Country: ${param.country}
<br/>

</body>
</html>
