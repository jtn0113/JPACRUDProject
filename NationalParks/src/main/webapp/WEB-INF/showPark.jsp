<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${park.name }</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<a href="home.do">Home</a><br>
	<div class="container">
	<h1>${park.name }</h1>
	<img alt="Image of ${park.name }" src="${park.image }" class="img-thumbnail">
	<table class="table">
		<tr>
			<th>State</th>
			<td>${park.state }</td>
		</tr>
		<tr>
			<th>Acres</th>
			<td>${park.acres }</td>
		</tr>
		<tr>
			<th>Latitude</th>
			<td>${park.latitude }</td>
		</tr>
		<tr>
			<th>Longitude</th>
			<td>${park.longitude }</td>
		</tr>
		<tr>
			<th>Description</th>
			<td>${park.description }</td>
		</tr>
	</table>
	<a href="updateParkForm.do?fid=${park.id }"><button type="submit" class="btn btn-success">Update</button></a>
	<a href="deletePark.do?fid=${park.id }"><button type="submit" class="btn btn-danger">Delete</button></a>

	</div>
</body>
</html>