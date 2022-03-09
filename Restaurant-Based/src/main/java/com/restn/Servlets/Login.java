package com.restn.Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restn.Implemention.RegisterImpl;
import com.restn.Model.RegisterBean;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 System.out.println("inside post");
		    String name = request.getParameter("user");
		    String password = request.getParameter("pass");
		    System.out.println(name+""+password);
		    String result = null;
		     try {
		    	 if(name!=null && name!="") {
		    		 if(password!=null && password!="") {
		    			 result="login Sucessfully" ;
		    			 
		    		 }else {
		    			 result="please check password" ;
		    		 }
		    		 
		    	 }else {
		    		 result="please check username";
		    	 }
		    	 request.setAttribute("msg", result);
		    	 if (result.equals("login Sucessfully")) {
				      RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
				      dispatcher.forward(request, response);

				    } else {
				      RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				      
				      dispatcher.forward(request, response);
				    }
		     }catch (Exception e) {
				// TODO: handle exception
			}finally {
				
				
			}
}
}