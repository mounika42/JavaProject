package com.restn.Implemention;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.restn.DBConn.DBConfig;
import com.restn.Model.RegisterBean;

public class OrderImpl {

	
	 public List<RegisterBean> Regiterget(RegisterBean bean) throws SQLException {
		    Connection con = DBConfig.getConn();
		    System.out.println(con);
		    Statement stmt=null;
         stmt = con.createStatement();
     List<RegisterBean> lt=new ArrayList<RegisterBean>();
			try{   

		    String sql = "Select Email,Mobileno,userName,Items from Order u where u.userName="+bean.getUsername();

         ResultSet rs = stmt.executeQuery(sql);
         while (rs.next())
         {
           bean.setEmailid(rs.getString("Email"));  
           bean.setMobileno(rs.getString("Mobileno"));  
           bean.setUsername(rs.getString("userName"));  
           bean.setPassword(rs.getString("Items"));  
          lt.add(bean);
         	
         }

		    
			
			
	  } catch (SQLException e) {
		      e.printStackTrace();
		    }finally {
		    	if(con!=null) {
		    		con.close();
		    	}
		    }
			return lt;
		   	  }



}
