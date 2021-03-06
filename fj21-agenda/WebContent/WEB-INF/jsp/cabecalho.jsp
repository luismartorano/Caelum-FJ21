<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/bootstrap.css">


<%-- use c:set within request scope with comma separated values --%>
<c:if test="${not empty cabecalhoCSS }">
	<c:forTokens items="${cabecalhoCSS}" delims="," var="item">
		<link rel="stylesheet" href="assets/css/${item}">
	</c:forTokens>
</c:if>

<c:if test="${not empty cabecalhoJS }">
	<c:forTokens items="${cabecalhoJS}" delims="," var="item">
		<script src="assets/js/${item}.js"></script>
	</c:forTokens>
</c:if>


<title>${tituloDaPagina}</title>
</head>
<body>
	<header style="border-bottom: black 1px solid">
		<div class="container">
			<h1>
				<img src="<c:url value='/assets/images/caelum.png' />" alt="logo" />
				<span>Agenda de Contatos do Wilson</span>
			</h1>
		</div>
	</header>