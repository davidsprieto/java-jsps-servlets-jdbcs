<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies Homepage</title>
</head>
<body>

<h3>Training Portal</h3>

<%-- read the favorite programming language cookie --%>

<%
    // set the default if there are no cookies
    String favLang = "Java";

    // get the cookies from the browser request
    Cookie[] theCookies = request.getCookies();

    // find our favorite language cookie
    if (theCookies != null) {

        for (Cookie cookie : theCookies) {
            if ("favLang".equals(cookie.getName())) {
                // favLang = cookie.getValue();

                // decode the cookie data to handle the case of the user choosing languages with spaces in them
                favLang = URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8);

                break;
            }
        }
    }
%>

<%-- now show a personalized page using the "favLang" variable --%>

<h4>New books for <%= favLang %></h4>

<ul>
    <li>Placeholder</li>
    <li>Placeholder</li>
</ul>

<h4>Latest news reports for <%= favLang %></h4>

<ul>
    <li>Placeholder</li>
    <li>Placeholder</li>
</ul>

<h4>Hot Jobs for <%= favLang %></h4>

<ul>
    <li>Placeholder</li>
    <li>Placeholder</li>
</ul>

<hr/>

<a href="/cookies-form">Personalize this page</a>

</body>
</html>
