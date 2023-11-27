package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;

import User.UserDetails;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name= req.getParameter("name");
		String email= req.getParameter("email");
		String password= req.getParameter("password");
		
		UserDetails u = new UserDetails();
		u.setName(name);
		u.setEmail(email);
		u.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConn());
		boolean f = dao.addUser(u);
		HttpSession session;
		
		if(f) {
			session = req.getSession();
			session.setAttribute("reg-success", "Register Successfully...");
			resp.sendRedirect("register.jsp");
		}
		else {
			session = req.getSession();
			session.setAttribute("failed-msg", "Something went wrong on server");
			resp.sendRedirect("register.jsp");
		}
	}
	
	
}
