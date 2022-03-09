package com.restn.Implemention;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.restn.DBConn.DBConfig;
import com.restn.Model.RegisterBean;

public class RegisterImpl {

	
	  public String Regiterindb(RegisterBean bean) throws SQLException {
		    Connection con = DBConfig.getConn();
		    System.out.println(con);
		    String sql = "insert into user_register(Id,Email,Mobileno,userName,password) values (NULL,?,?,?,?) ";
		    int i = 0;
		    try {
		      PreparedStatement preparedStatement = con.prepareStatement(sql);
		      preparedStatement.setString(1, bean.getEmailid());
		      preparedStatement.setString(2, bean.getMobileno());
		      preparedStatement.setString(3, bean.getUsername());
		      preparedStatement.setString(4, bean.getPassword());
		      i = preparedStatement.executeUpdate();
		      con.commit();
		    } catch (SQLException e) {
		      e.printStackTrace();
		    }finally {
		    	if(con!=null) {
		    		con.close();
		    	}
		    }
		    if (i != 0) {
		      return "User is registered";
		    } else {
		      return "Error!!!!";
		    }
		  }

	
	  
	  
	  public List<RegisterBean> Regiterget(RegisterBean bean) throws SQLException {
		    Connection con = DBConfig.getConn();
		    System.out.println(con);
		    Statement stmt=null;
            stmt = con.createStatement();
        List<RegisterBean> lt=new ArrayList<RegisterBean>();
			try{   

		    String sql = "Select Email,Mobileno,userName,password from user_register u where u.userName="+bean.getUsername();

            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next())
            {
              bean.setEmailid(rs.getString("Email"));  
              bean.setMobileno(rs.getString("Mobileno"));  
              bean.setUsername(rs.getString("userName"));  
              bean.setPassword(rs.getString("password"));  
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
