<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update ${park.name }</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<a href="home.do">Home</a><br>
	<div class="container">
	<form action="updatePark.do">
		<input type="hidden" name="id" value="${park.id }">
		<div class="form-group">
			<label>Park Name:</label>
			<input class="form-control" name="name" value="${park.name }">
		</div>
		<div class="form-group">
			<label>State:</label>
			<input class="form-control" name="state" value="${park.state }">
		</div>
		<div class="form-group">
			<label>Acres:</label>
			<input class="form-control" name="acres" value="${park.acres }">
		</div>
		<div class="form-group">
			<label>Latitude:</label>
			<input class="form-control" name="latitude" value="${park.latitude }">
		</div>
		<div class="form-group">
			<label>Longitude:</label>
			<input class="form-control" name="longitude" value="${park.longitude }">
		</div>
		<div class="form-group">
			<label>Image URL:</label>
			<input class="form-control" name="image" value="${park.image }">
		</div>
		<div class="form-group">
			<label>Description:</label>
			<input class="form-control" name="description" value="${park.description }">
		</div>
		<button type="submit" class="btn btn-success">Update</button>
	</form>
	</div>
</body>
</html>