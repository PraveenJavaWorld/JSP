package test;
import java.sql.*;
public class RegisterDAO {
	public static int register(RegForm u){
		int status=0;
		try {
			Connection con=DBConnection.get();
			PreparedStatement  ps=con.prepareStatement("insert into regform values(?,?,?,?,?,?)");
			ps.setString(1,u.getUname());
			ps.setString(2,u.getPass());
			ps.setString(3,u.getFn());
			ps.setString(4,u.getLn());
			ps.setString(5,u.getEmail());
			ps.setString(6,u.getAddress());
			status=ps.executeUpdate();
		} catch (Exception e) {
			
		}
		return status;
		
	}

}
