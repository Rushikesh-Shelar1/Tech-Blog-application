package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.dao.PostDao;
import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;

/**
 * Servlet implementation class AddPostServlet
 */
public class AddPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPostServlet() {
        super();

        
        
    
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out = response.getWriter();
		
        int cid = Integer.parseInt(request.getParameter("cid"));
        String pTitle = request.getParameter("pTitle");
        String pContent = request.getParameter("pContent");
        String pCode = request.getParameter("pCode");
        Part part = request.getPart("pic");
//        getting currentuser id
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("currentUser");

       out.println("your post title is " + pTitle);
       out.println(part.getSubmittedFileName());
        Post p = new Post(pTitle, pContent, pCode, part.getSubmittedFileName(), null, cid, user.getId());
        PostDao dao = new PostDao(ConnectionProvider.getConnection());
        if (dao.savePost(p)) {

           // String path = request.getRealPath("/") + "blog_pics" + File.separator + part.getSubmittedFileName();
           // Helper.saveFile(part.getInputStream(), path);
            out.println("done");
        } else {
            out.println("error");
        }

    
	}

}
