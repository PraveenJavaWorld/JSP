package test;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet{
	public Connection con;
	@Override
	public void init() throws ServletException{
		con=DBConnection.get();
	}
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	throws ServletException,IOException{
		//PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		String uname=req.getParameter("uname");
		String pword=req.getParameter("pword");
		try {
			PreparedStatement ps=con.prepareStatement("select * from userreg16 where username=? and password=?");
			ps.setString(1,uname);
			ps.setString(2,pword);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				RegBean rb=new RegBean();
				rb.setuName(rs.getString(1));
				rb.setpWord(rs.getString(2));
				rb.setfName(rs.getString(3));
				rb.setlName(rs.getString(4));
				rb.setMid(rs.getString(5));
				rb.setPhno(rs.getLong(6));
				ServletContext sct=this.getServletContext();
				sct.setAttribute("beanRef",rb);
				Cookie ck=new Cookie("name",rs.getString(3));
				res.addCookie(ck);
				req.setAttribute("fname",rs.getString(3));
				RequestDispatcher rd=req.getRequestDispatcher("Login-Success.jsp");
				rd.forward(req, res);
			}
			else{
				req.setAttribute("msg","Invalid Credentials....");
				RequestDispatcher rd=req.getRequestDispatcher("Login-Error.jsp");
				rd.forward(req, res);
			}
		} catch (Exception e) {
			
		}
	}

}
