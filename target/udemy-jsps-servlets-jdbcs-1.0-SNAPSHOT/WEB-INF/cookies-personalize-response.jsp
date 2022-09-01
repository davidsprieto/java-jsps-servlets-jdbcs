<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies Personalize Response</title>
</head>

<%
    // read form data
    String favLang = request.getParameter("favLang");

    // encode the cookie data to handle the case of the user choosing languages with spaces in them
    favLang = URLEncoder.encode(favLang, StandardCharsets.UTF_8);

    // create the cookie
    Cookie theCookie = new Cookie("favLang", favLang);

    // set the life span/expiration of the cookie
    theCookie.setMaxAge(60*60*24*365);

    // send the cookie to the browser
    response.addCookie(theCookie);
%>

<body>

Thanks! We set your favorite language to: ${param.favLang}

<br/>

<a href="/cookies-homepage">Return to homepage.</a>

</body>
</html>
