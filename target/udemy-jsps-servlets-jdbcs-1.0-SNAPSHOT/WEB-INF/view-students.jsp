<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Students</title>
</head>
<body>

<c:forEach var="student" items="${students}">
    ${student} <br/>
</c:forEach>

</body>
</html>
