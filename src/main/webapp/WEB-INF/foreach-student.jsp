<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.codeup.udemyjspsservletsjdbcs.models.Student" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html>
<head>
    <title>forEach Student</title>
</head>
<style>
    table, th, td {
        border: 1px solid black;
    }
</style>
<body style="text-align: center">

<%
    // create some sample data --> normally provided by MVC --> see "ForEachStudentServlet" to see how the code is written in the servlet
    List<Student> students = new ArrayList<>();

    Student john = new Student("John", "Doe", false);
    Student maxwell = new Student("Maxwell", "Johnson", false);
    Student mary = new Student("Mary", "Public", true);

    students.add(john);
    students.add(maxwell);
    students.add(mary);

    session.setAttribute("students", students); // can be written as: pageContext.setAttribute("students", students); too.
%>

<table>

    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gold Customer</th>
    </tr>

    <c:forEach var="student" items="${students}">

        <tr>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>
                <c:if test="${student.goldCustomer}">
                    Yes, Special Discount!
                </c:if>

                <c:if test="${not student.goldCustomer}">
                    No, No Special Discount!
                </c:if>
            </td>
        </tr>

    </c:forEach>


    <%--  The above code can be also be written using the JSTL <c:choose></c:choose> Tag which is similar to a switch statement --%>
    <c:forEach var="student" items="${students}">

        <tr>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>
                <c:choose>

                <c:when test="${student.goldCustomer}">
                    Yes, Special Discount!
                </c:when>

                <c:otherwise>
                    No, No Special Discount!
                </c:otherwise>

                </c:choose>
            </td>
        </tr>

    </c:forEach>

</table>

</body>
</html>
