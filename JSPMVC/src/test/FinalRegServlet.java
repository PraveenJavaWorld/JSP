package test;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/final")
public class FinalRegServlet extends HttpServlet{
	public Connection con;
	public RegBean rb;
	public ServletContext sct;
	@Override
	public void init() throws ServletException{
		con=DBConnection.get();
		sct=this.getServletContext();
		rb=(RegBean)sct.getAttribute("beanRef");
	}
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	throws  ServletException,IOException{
		res.setContentType("text/html");
		try {
			PreparedStatement ps=con.prepareStatement("insert into userreg16 values(?,?,?,?,?,?)");
			ps.setString(1,rb.getuName());
			ps.setString(2,rb.getpWord());
			ps.setString(3,rb.getfName());
			ps.setString(4,rb.getlName());
			ps.setString(5,rb.getMid());
			ps.setLong(6,rb.getPhno());
			int k=ps.executeUpdate();
			if(k>0){
				req.setAttribute("msg","User Registered Successfully....");
				RequestDispatcher rd=req.getRequestDispatcher("Login-Error.jsp");
				rd.forward(req, res);
			}
		} catch (Exception e) {
			
		}
	}
	

}
