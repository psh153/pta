<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
    <title>Tiles Layout</title>

    <script src="/resources/js/jquery-4.0.0.min.js"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>

<body>

<tiles:insertAttribute name="body"/>

</body>
</html>
