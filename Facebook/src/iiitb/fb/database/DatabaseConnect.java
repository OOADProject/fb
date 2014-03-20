package iiitb.fb.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DatabaseConnect {
	
	private static Connection con=null;
	
	public static Connection getConnection(){
        try{

            String driver="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/sis";
            String user="root";
            String pass="root";

            Class.forName(driver);
            con=DriverManager.getConnection(url,user,pass);

        }catch(Exception e){
            con=null;
            e.printStackTrace();
        }
        return con;
        }
	
	public int updateData(String query) {
        Connection con=getConnection();
        int val;
        try{
        Statement st=con.createStatement();
        val=st.executeUpdate(query);
        }catch(Exception e){
        	e.printStackTrace();
            val=0;
        }
        return val;
    }

	public int updateData(PreparedStatement ps){
		int val = 0;
		try {
			val = ps.executeUpdate();
			return val;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return val;
		}
	}
	
    public ResultSet getData(String query){
        Connection con=getConnection();
        ResultSet result;
        try{
        Statement st=con.createStatement();
        result=st.executeQuery(query);
        }catch(Exception e){
            result=null;
            e.printStackTrace();
        }
        return result;
    }
     
	public ResultSet getData(PreparedStatement ps){
		ResultSet rs = null;
		try {
			rs = ps.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return rs;

		}
	}
}
