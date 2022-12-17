<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>National Parks</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<a href="home.do">Home</a><br>
	<a href="createForm.do">Add Park</a>
	<div class="container">
	<header>
		<h1>Welcome to the US National Parks Explorer</h1>
	</header>

	<div class="list-group">
	<c:forEach var="park" items="${parkList }">
		<a href="showPark.do?fid=${park.id }" class="list-group-item list-group-item-action list-group-item-primary">${park.name }</a>
		<br>
	</c:forEach>
	</div>
	</div>
	
	<img alt="" src="https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States#/media/File:Bass_Harbor_Head_Light_Station_2016.jpg">
	

</body>
</html>