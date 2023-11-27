package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;

import User.UserDetails;


@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email= req.getParameter("email");
		String password= req.getParameter("password");
		
		UserDetails u = new UserDetails();	
		u.setEmail(email);
		u.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConn());
		UserDetails user= dao.loginUser(u);
	
		
		if(user!=null) {
			HttpSession session = req.getSession();
			session.setAttribute("userD", user);
			resp.sendRedirect("home.jsp");
		}
		else {
			HttpSession session = req.getSession();
			session.setAttribute("login-failed", "Invalid Username and Password");
			resp.sendRedirect("login.jsp");
		}
	}
	
	
	
}
