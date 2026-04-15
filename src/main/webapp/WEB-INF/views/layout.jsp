<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
	<head>
	    <title>Tiles Layout</title>
	    <script src="/resources/js/jquery-4.0.0.min.js"></script>
	    <script src="/resources/js/jquery-ui.js"></script>
	    <script type="text/javascript" src="/resources/js/tabulator/tabulator.js"></script>
		<script type="text/javascript" src="/resources/js/tabulator/jquery_wrapper.js"></script>
		<%-- <script type="text/javascript" src="/resources/js/tabulator/luxon.js"></script> --%>
	    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
	    <link rel="stylesheet" href="/resources/css/jquery-ui.css">
	    <link rel="stylesheet" href="/resources/css/tabulator/tabulator.css">
	</head>

	<body>
		<tiles:insertAttribute name="body"/>
	</body>
</html>
