package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//login
		//fetch username and password from request
		
		String userEmail=request.getParameter("email");
		String userPassword =request.getParameter("password");
		
		UserDao dao= new UserDao(ConnectionProvider.getConnection());
		
		User u =dao.getUserByEmailAndPassword(userEmail, userPassword); // the info of user is returned fron getUserByEmailAndPassword() method from User Dao
		
		if(u==null) {
			//login error
			//out.println("Invalid Details.... try again"); 
			Message msg =new Message("invalid Details ! try with another","error","alert-danger");
			HttpSession s=request.getSession();
			s.setAttribute("msg", msg);
			response.sendRedirect("login_page.jsp");
		}
		else {
			//login success
			HttpSession s=request.getSession();
			s.setAttribute("currentUser", u);
			response.sendRedirect("profile.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		// TODO Auto-generated method stub
		doGet(request, response);
		

	}

}
