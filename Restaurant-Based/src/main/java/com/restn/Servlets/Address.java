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
			  bean.setMobileno(Integer.parseInt(mobileNo));
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
		if(request.getParameter("City")!=null && request.getParameter("City")!="") {
			City=request.getParameter("City");
			bean.setCity(City);
		  }
		String pinNo="";
		if(request.getParameter("PinNo")!=null && request.getParameter("PinNo")!="") {
			pinNo=request.getParameter("PinNo");
			bean.setPinNo(Integer.parseInt(pinNo));
		  }
		if(bean!=null) {
			request.setAttribute("BeanUsername", bean.getUsername());
			request.setAttribute("BeanAddress", bean.getAddress());
			request.setAttribute("mobileNo", bean.getMobileno());


			RequestDispatcher dispatcher = request.getRequestDispatcher("Oder.jsp");
		      dispatcher.forward(request, response);

		}
		
		
		
		}catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			if(bean!=null) {
				
			}
		}
		 
		
		
		
	}

}
