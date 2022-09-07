<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Functions Test</title>
</head>
<body style="text-align: center;">

<h1>Testing Methods in Java:</h1>

<%-- Testing various Methods --%>
<c:set var="data" value="Hello" />

Length of the string <b>${data}</b>: ${fn:length(data)}
<br/>
Uppercase version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
<br/>
Lowercase version of the string <b>${data}</b>: ${fn:toLowerCase(data)}
<br/>
Does the first letter of the string <b>${data}</b> start with <b>H</b>?: ${fn:startsWith(data, "H")}
<br/>

<%-- Testing Split and Join methods --%>
<c:set var="cities" value="Chicago,Milwaukee,Madison,San Diego" />

<c:set var="citiesArray" value="${fn:split(cities, ',')}" />

The result of using the "split" method (splits a string into an array) and looping through the array is:
<br/>
<c:forEach var="city" items="${citiesArray}">
    ${city} <br/>
</c:forEach>


<c:set var="citiesString" value="${fn:join(citiesArray, '-')}" />

The result of using the "join" method (joins an array into a string) is:
<br/>
${citiesString}

</body>
</html>
