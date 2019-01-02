<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<!DOCTYPE html>
<html lang="${pageContext.response.locale}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:url value="/" var="contextUrl"/>

<tilesx:useAttribute name="css" id="listCss" classname="java.util.List" />
<tilesx:useAttribute name="js" id="listJs" classname="java.util.List" />
<tilesx:useAttribute name="title" id="title"
	classname="java.lang.String" />
<c:forEach items="${listCss}" var="item">
	<link rel="stylesheet" href="<c:url value='${item}'/>" type="text/css"
		media="screen" />
</c:forEach>

<style type="text/css">
.error {
	color: red;
}
</style>

<title><spring:message code="${title}" /></title>
</head>
<body>
	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="body" />

	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>

	<input id="contextUrl" type="hidden" value="${contextUrl}">

	<c:forEach var="item" items="${listJs}">
		<script src="<c:url value='${item}'/>" type="text/javascript"></script>
	</c:forEach>
</body>
</html>
