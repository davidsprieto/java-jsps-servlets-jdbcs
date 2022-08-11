<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSPs, Servlets, JDBCs</title>
</head>
<body>

<br/>
<%-- EXPRESSIONS --%>
Converting a string to uppercase: <%= new String("Hello World").toUpperCase() %>
<br/>
25 multiplied by 4 equals: <%= 25*4 %>
<br/>
Is 75 less than 69? <%= 75 < 69 %>
<br>

<%-- SCRIPLET --%>
<%
    PrintWriter outPrint = response.getWriter();

    for (int i = 1; i <= 5; i++) {
        outPrint.println("<br/> I really love to code: " + i);
    }
%>
<br/>

<%-- DECLARATIONS --%>
<%!
    String makeItLower(String data) {
        return data.toLowerCase();
    }
%>
Lower case "Hello World": <%= makeItLower("Hello World") %>

</body>
</html>
