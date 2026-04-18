<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<head>
    <title>pta</title>
    <link rel="icon" type="image/png" sizes="32x32" href="/resources/favicon.png">
    <script src="/resources/js/jquery-4.0.0.min.js"></script>
    <script src="/resources/js/jquery-ui.js"></script>
    <script type="text/javascript" src="/resources/js/tabulator/tabulator.js"></script>
	<script type="text/javascript" src="/resources/js/tabulator/jquery_wrapper.js"></script>
	<%-- <script type="text/javascript" src="/resources/js/tabulator/luxon.js"></script> --%>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/jquery-ui.css">
    <link rel="stylesheet" href="/resources/css/tabulator/tabulator.css">
</head>

<div class="layout">
    <!-- 좌측 -->
    <div class="sidebar">
        <tiles:insertAttribute name="sidebar"/>
    </div>
    <!-- 우측 메인 -->
    <div class="main">
        <tiles:insertAttribute name="body"/>
    </div>
</div>
