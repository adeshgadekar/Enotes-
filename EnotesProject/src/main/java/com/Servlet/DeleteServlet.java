package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.DB.DBConnect;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Integer noteid = Integer.parseInt(request.getParameter("note_id"));
		PostDAO dao = new PostDAO(DBConnect.getConn());
		boolean f = dao.DeleteNotes(noteid);
		
		if(f) {
			HttpSession session = request.getSession();
			session.setAttribute("updateMsg", "Delete Note Successfully");
			response.sendRedirect("showNotes.jsp");
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("wrongMsg", "Something Went Wrong On Server");
			response.sendRedirect("showNotes.jsp");
		}
		
	}

}
