<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa-solid fa-user-plus fa-3x"></i>
						<h1>Registration Page</h1>
					</div>



					<%
					String regMsg = (String) session.getAttribute("reg-success");

					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>
						Login<a href="login.jsp">click Here</a>
					</div>

					<%
					session.removeAttribute("reg-success");
					}
					%>

					<%
					String failedMsg = (String) session.getAttribute("failed-msg");

					if (failedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=failedMsg%></div>

					<%
					session.removeAttribute("failed-msg");
					}
					%>

					<div class="card-body">
						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Full Name</label> <input
									type="text" required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name" placeholder="Enter full name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email" placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" required="required" class="form-control"
									id="exampleInputPassword1" name="password"
									placeholder="Enter Password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-dark mt-0">
		<p class="text-center text-white">Designed And Developed By Adesh
			Gadekar</p>

		<p class="text-center text-white">All Right Reserved
			@AdeshGadekar-2022-23</p>

	</div>
</body>
</html>