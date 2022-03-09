package com.restn.Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restn.Implemention.RegisterImpl;
import com.restn.Model.RegisterBean;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost1(HttpServletRequest request, HttpServletResponse response)
	 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
			      throws ServletException, IOException {
			    // TODO Auto-generated method stub
			    System.out.println("inside post");
			    response.setContentType("text/html");
			    String name = request.getParameter("name");
			    String email = request.getParameter("email");
			    String username = request.getParameter("uname");
			    String password = request.getParameter("pass");
			    RegisterBean bean = new RegisterBean();
			    RegisterImpl dao = new RegisterImpl();
			    System.out.println(username+""+password);
			    String result = null;
				try {
					result = dao.Regiterindb(bean);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			    if (result.equals("User is registered")) {
			      RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			      dispatcher.include(request, response);
			    } else {
			      RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
			      dispatcher.include(request, response);
			    }
			  }
}
