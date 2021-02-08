 
package com.blog.post.helper;
import java.sql.*;
 
public class ConnetionProvider {
    
    private static Connection con;
    public static Connection getConnection(){
        
       try{
           
           if(con==null){
           //driver class
           
           Class.forName("com.mysql.jdbc.Driver");
           
           //create a connection
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blogpost", "root", "Anwar@123");
           }    
       }catch(Exception e){
           e.printStackTrace();
       }
        
        
        return con;
    }
}
