package test;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateServlet extends HttpServlet{
	public Connection con;
	public ServletContext sct;
	@Override
	public void init() throws ServletException{
		con=DBConnection.get();
		sct=this.getServletContext();
	}
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	throws ServletException,IOException{
		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		Cookie ck[]=req.getCookies();
		if(ck==null){
			pw.println("Please ! Login First....");
			RequestDispatcher rd=req.getRequestDispatcher("Login.html");
			rd.include(req, res);
		}
		else{
			String fname=req.getParameter("fname");
			String lname=req.getParameter("lname");
			String mid=req.getParameter("mid");
			long phno=Long.parseLong(req.getParameter("phno"));
			RegBean rb=(RegBean)sct.getAttribute("beanRef");
			rb.setfName(fname);
			rb.setlName(lname);
			rb.setMid(mid);
			rb.setPhno(phno);
			try {
				PreparedStatement ps=con.prepareStatement("update userreg16 set firstname=?,lastname=?,mailid=?,phonenumber=? where username=? and password=?");
				ps.setString(1,rb.getfName());
				ps.setString(2,rb.getlName());
				ps.setString(3,rb.getMid());
				ps.setLong(4,rb.getPhno());
				ps.setString(5,rb.getuName());
				ps.setString(6,rb.getpWord());
				int k=ps.executeUpdate();
				if(k>0){
					req.setAttribute("name",ck[0].getValue());
					RequestDispatcher rd=req.getRequestDispatcher("Update.jsp");
					rd.forward(req, res);
				}
			} catch (Exception e) {
				
			}
			
		}
	}

}
