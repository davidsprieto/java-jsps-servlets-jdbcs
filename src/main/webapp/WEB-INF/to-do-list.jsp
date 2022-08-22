<%@ page import="java.util.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>To Do List</title>
</head>
<body style="text-align: center">

<%-- Step 1: Create HTML Form --%>
<form action="/to-do-list" method="post">
    Add new item: <label for="theItem"><input id="theItem" type="text" name="theItem"/></label>

    <input type="submit" value="submit"/>
</form>

<%-- Step 2: Add new item to "To Do" list --%>
<%
    // get the to do items from the session
    List<String> items = (List<String>) session.getAttribute("myToDoList");

    // if the to do items doesn't exist, then create a new one
    if (items == null) {
        items = new ArrayList<>();
        session.setAttribute("myToDoList", items);
    }

    // see if there is form data to add
    String theItem = request.getParameter("theItem"); // grabbing the form input from the user

    boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0; // checking if the input from the user is null/an empty string
    boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim()); // checking if the input from the user is already in the list of items

    if (isItemNotEmpty && isItemNotDuplicate) {
        items.add(theItem);
    }
%>

<%-- Step 3: Display all "To Do" Items from user session --%>
<ol>
    <%
        PrintWriter outPrint = response.getWriter();

        outPrint.println("To Do List: " + "<hr/>");

        for (String item : items) {
            outPrint.println("<li>" + item + "</li>");
        }
    %>
</ol>
</body>
</html>

