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
	<h1>${park.name }</h1>
	<table>
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
</body>
</html>