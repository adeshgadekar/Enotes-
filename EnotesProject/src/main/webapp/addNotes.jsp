<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "please login...");
}
%>






<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<div Class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>

		<h1 class="text-center mt-5">Add Your Notes</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="form-group">

							<%
							UserDetails u = (UserDetails) session.getAttribute("userD");

							if (u != null) {
							%>
							<input type="hidden" value="<%=u.getId()%>" name="uid">
							<%
							}
							%>

							<label for="exampleInputEmail1">Enter Note Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Note Description </label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"></textarea>
						</div>

						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>