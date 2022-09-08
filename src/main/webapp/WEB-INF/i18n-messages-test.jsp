<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" scope="session" />

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="com.codeup.udemyjspsservletsjdbcs.i18n.resources.mylabels" />
<html>
<head>
    <title>i18n Messages</title>
</head>
<body>

<a href="/i18n-messages-test?theLocale=en_US">English (US)</a>
 |
<a href="/i18n-messages-test?theLocale=es_ES">Spanish (ES)</a>
 |
<a href="/i18n-messages-test?theLocale=de_DE">Germany (DE)</a>

<br/>
<fmt:message key="label.greeting" />
<br/>
<fmt:message key="label.firstname" /> <i>John</i>
<br/>
<fmt:message key="label.lastname" /> <i>Doe</i>
<br/>
<fmt:message key="label.welcome" />
<hr/>

Selected locale: ${theLocale}
</body>
</html>
