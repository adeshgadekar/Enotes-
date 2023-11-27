<%@page import="User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<a class="navbar-brand" href="index.jsp"><i
		class="fa-solid fa-book fa-spin"></i> ENotes</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp"><i
					class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item"><a class="nav-link" href="addNotes.jsp"><i
					class="fa-solid fa-circle-plus"></i> Add Notes</a></li>

			<li class="nav-item"><a class="nav-link" href="showNotes.jsp"><i
					class="fa-solid fa-eye"></i> Show Notes</a></li>
		</ul>


		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");

		if (user != null) {
		%>

		<a href="" class="btn btn-light my-2 my-sm-0 mr-2" data-toggle="modal"
			data-target="#exampleModal" type="submit"><i
			class="fa-regular fa-user"></i> <%=user.getName()%></a> <a
			href="LogoutServlet" class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa-solid fa-right-from-bracket"></i> Logout</a>


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">User Profile</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">

						<div class="container text-center">
							<i class="fa fa-user fa-3x"></i>

							<table class="table">
								<tbody>
									<tr>
										<th>User Id</th>
										<td><%=user.getId()%></td>
									</tr>

									<tr>
										<th>Full Name</th>
										<td><%=user.getName()%></td>
									</tr>

									<tr>
										<th>Email Id</th>
										<td><%=user.getEmail()%></td>
									</tr>
								</tbody>
							</table>

							<div type="button" class="btn btn-primary" data-dismiss="modal">Close</div>
						</div>


					</div>

				</div>
			</div>
		</div>


		<%
		} else {
		%>

		<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-2"
			type="submit"><i class="fa-solid fa-user-lock"></i> Login</a> <a
			href="register.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa-solid fa-user-plus"></i> Register</a>


		<%
		

		}
		%>




	</div>

</nav>