package com.restn.Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restn.Model.Adressbean;

/**
 * Servlet implementation class Address
 */
public class Address extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Address() {
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
		
		Adressbean bean=new Adressbean();
		try {
		  String Email="";
		  if(request.getParameter("fname")!=null && request.getParameter("fname")!="") {
			  Email=request.getParameter("fname");
			  bean.setEmailid(Email);
		  }
		  String mobileNo="";
		  if(request.getParameter("lname")!=null && request.getParameter("lname")!="") {
			  mobileNo=request.getParameter("lname");
			  bean.setMobileno(mobileNo);
		  }
		  String usename="";
		  if(request.getParameter("uname")!=null && request.getParameter("uname")!="") {
			  usename=request.getParameter("uname");
			  bean.setUsername(usename);
		  }
		String Address="";
		if(request.getParameter("Adress1")!=null && request.getParameter("Adress1")!="") {
			Address=request.getParameter("Adress1");
			bean.setAddress(Address);
			
		  }
		String City="";
		if(request.getParameter("city")!=null && request.getParameter("city")!="") {
			City=request.getParameter("city");
			bean.setCity(City);
		  }
		String pinNo="";
		if(request.getParameter("pinno")!=null && request.getParameter("pinno")!="") {
			pinNo=request.getParameter("pinno");
			bean.setPinNo(Integer.parseInt(pinNo));
		  }
		if(pinNo!=null && pinNo!="") {
			if(City!=null && City!="") {
				if(Address!=null && Address!="") {
					if(usename!=null && usename!="") {
						if(mobileNo!=null && mobileNo!="") {
							if(Email!=null && Email!="") {

			request.setAttribute("name",  bean.getUsername()+"..."+ bean.getAddress()+","+bean.getCity());
			RequestDispatcher dispatcher = request.getRequestDispatcher("Oder.jsp");
		      dispatcher.forward(request, response);

		}else {
			request.setAttribute("name", "please provided valid address");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Confirmation.jsp");
		      dispatcher.forward(request, response);

			
		}}else {
			request.setAttribute("name",  "please provided valid address");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Confirmation.jsp");
		      dispatcher.forward(request, response);

		}}else {
			request.setAttribute("name",  "please provided valid address");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Confirmation.jsp");
		      dispatcher.forward(request, response);

		}}else {
			request.setAttribute("name",  "please provided valid address");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Confirmation.jsp");
		      dispatcher.forward(request, response);

		}}else {
			request.setAttribute("name",  "please provided valid address");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Confirmation.jsp");
		      dispatcher.forward(request, response);

		}}else {
			request.setAttribute("name",  "please provided valid address");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Confirmation.jsp");
		      dispatcher.forward(request, response);

		}
		
		
		
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			if(bean!=null) {
				bean=null;
			}
		}
		 
		
		
		
	}

}
