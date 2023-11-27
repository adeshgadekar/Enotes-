<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/home.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>






	<div class="container-fluid back-img">
		<div class="text-center ">
			<h1 class="text-white ">
				<i class="fa-solid fa-book"></i> E Notes-Save Your Notes
			</h1>
			<a href="login.jsp" class="btn btn-light"><i
				class="fa-solid fa-user-lock"></i> Login</a> <a href="register.jsp"
				class="btn btn-light"><i class="fa-solid fa-user-plus"></i>
				Register</a>
		</div>
	</div>


	<div class="container-fluid bg-dark mt-1">
		<p class="text-center text-white">Designed And Developed By Adesh
			Gadekar</p>

		<p class="text-center text-white">All Right Reserved
			@AdeshGadekar-2022-23</p>

	</div>
</body>
</html>