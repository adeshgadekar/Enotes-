<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="User.Post" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user4 = (UserDetails) session.getAttribute("userD");

if (user4 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "please login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%
		Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	
		PostDAO post = new PostDAO(DBConnect.getConn());
		Post p = post.getDataById(noteid);
	%>

	<div Class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>

		<h1 class="text-center mt-5">Edit Your Notes</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="EditNotesServlet" method="post">

						<input type="hidden" value=<%=noteid%> name= "noteid" >
						<div class="form-group">

							<label for="exampleInputEmail1">Enter Note Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required" value= "<%=p.getTitle()%>"/>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Note Description </label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"><%=p.getContent() %></textarea>
						</div>

						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>

	<%@include file="all_component/footer.jsp"%>


</body>
</html>