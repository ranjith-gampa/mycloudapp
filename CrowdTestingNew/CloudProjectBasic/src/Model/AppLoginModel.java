package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Bean.EmployeeDetails;
import Bean.Login;
//import Bean.TesterDetails;
public class AppLoginModel {
	String firstName,lastName;
	String repTo;
	Bean.EmployeeDetails ed=new Bean.EmployeeDetails();
	public boolean employeeLogin(EmployeeDetails b)
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels","root","Rohit");
			PreparedStatement st=c.prepareStatement("select password,jobTitle from employees where email=?");
			PreparedStatement st1=c.prepareStatement("select firstName,lastName from employees where email=?");
			st.setString(1, b.getUsername());				
			st1.setString(1, b.getUsername());
	    	 ResultSet rs =st.executeQuery();
	    	 ResultSet rs1=st1.executeQuery();
	    	 b.setEmail(b.getUsername());
	    	 while(rs1.next()){
	    	 
	    	 firstName=rs1.getString(1);
	    	 //rs1.next();
	    	 lastName=rs1.getString(2);
	    	 b.setFirstName(rs1.getString(1));
	    	 b.setLastName(rs1.getString(2));
	    	 System.out.println(rs1.getString(1)+ " " +rs1.getString(2));
	    	 }
	    	
	    	 
	    	 

	    	 while(rs.next()){
			    if(b.getPassword().equals(rs.getString(1)))
			     {
			      System.out.println("User Found : "+firstName+" "+lastName);
			      rs.getString(2);
			      
				  return true;
			     }
	    	  
	    	 }
	    	
	    	 
	    	st1.close();  
			st.close();
			c.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}
	

	public int CheckLogin(Login b){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels","root","Rohit");
			//System.out.println("User : "+b.getUsername());
			PreparedStatement st=c.prepareStatement("select * from LoginInfo where email=?");
			st.setString(1, b.getUsername());				
 			
	    	 ResultSet rs =st.executeQuery();
	    	  while(rs.next()) 
	    	  {
	    		System.out.println(rs.getString(2));
	    		System.out.println(b.getPassword());
			    if(b.getPassword().equals(rs.getString(3)))
			     {
			      System.out.println("User Found : "+b.getUsername());
				  return 1;
			     }
	    	   }	 
			  
	    
	    	  
			st.close();
			c.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	 return 0;
	}


}
