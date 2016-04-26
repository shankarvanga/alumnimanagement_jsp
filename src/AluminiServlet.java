

import javax.servlet.http.*;

import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.*;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;

import java.io.*;
import java.util.*;
import java.sql.*;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
@MultipartConfig(maxFileSize = 16177215)

public class AluminiServlet extends HttpServlet {
	
	//
	private String driverClass="";
	private String url="";
	private String uname="";
	private String upass="";
	private String http_url="";
	
	public void init(){
		System.out.println ("In init()......");
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
			throws ServletException,IOException {
			try {
    			process(req,res);							
			}
			catch (Exception ex) {
			}	
			
		}//doPost
	
	public void doGet(HttpServletRequest req,HttpServletResponse res)
			throws ServletException,IOException {
			try {
    			process(req,res);							
			}
			catch (Exception ex) {
				ex.printStackTrace();
			}
		}//doGet
	
	public void process(HttpServletRequest req,HttpServletResponse res)
			throws ServletException,IOException,Exception {
			
			HttpSession session=req.getSession();
			RequestDispatcher rd=null;
			
			String 	mod=req.getParameter("MOD");
			String action=req.getParameter("Action");
			//module selection code
			//-------------------------------------------------------------------------------------
			if(mod.equals("ALUM")){
				if(action.equals("Addach")){
					String id=req.getParameter("id");
					String sql="select * from alumni_details where id="+id;
					ResultSet rs=null;
					ArrayList one=new ArrayList();
					try{
						Connection con=DBConnect.prepareConn();
						Statement stmt=con.createStatement();
						rs=stmt.executeQuery(sql);
						while(rs.next()){
							//ArrayList one=new ArrayList();
							one.add(rs.getInt(1)+"");
							one.add(rs.getString(2));
							one.add(rs.getString(5));
							one.add(rs.getString(9));
						}
						DBConnect.closeConn(con);   
						
					}
					catch(Exception e){
					}
					session.setAttribute("achdata", one);
					session.setAttribute("content_page", "achievements.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				if(action.equals("Subach")){
					InputStream is=null;
					Part p=req.getPart("photo");
					is=p.getInputStream();
					System.out.println("Submitting");
					String name=req.getParameter("aname");
					String yop=req.getParameter("ayop");
					String rollno=req.getParameter("rollno");
					String ach=req.getParameter("achievement");
					String dat=req.getParameter("date");
					try{
						String sql="insert into alumni_achievements (name,yop,rollno,date,achievement,proof) values(?,?,?,?,?,?)";
						Connection con=DBConnect.prepareConn();
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1, name);
						ps.setString(2, yop);
						ps.setString(3, rollno);
						ps.setString(4, dat);
						ps.setString(5, ach);
						ps.setBlob(6, is);
						ps.executeUpdate();
						session.setAttribute("content_page", "achsuccess.jsp");
						res.sendRedirect("alumni/template.jsp");
					}
					catch(Exception e){
						e.printStackTrace();
					}
	
				}
				if(action.equals("Reg")){
					System.out.println("hello");
					String name=req.getParameter("name");
					String pass=req.getParameter("pass");
					String bname=req.getParameter("bname");
					String yop=req.getParameter("yop");
					String add=req.getParameter("add");
					String mob=req.getParameter("mob");
					String email=req.getParameter("email");
					String rollno=req.getParameter("rollno");
					String sql="insert into alumni_details (name,pass,branch,yop,add1,email,mob,rollno) "+
						"values('"+name+"','"+pass+"','"+bname+"','"+yop+"','"+add+"','"+email+"','"+mob+"','"+rollno+"')";
					System.out.println (sql);
					int up=DBConnect.updateQuery(sql);
					//res.sendRedirect("login.jsp");		
					if(up>0)
						res.sendRedirect("login.jsp");
				}
				else if(action.equals("Login")){
					String name=req.getParameter("userName");
					String pass=req.getParameter("userPass");
					String sql="select id,name from alumni_details where name='"+name+"' and pass='"+pass+"'";
					System.out.println (sql);
					ArrayList a=DBConnect.loginAlumni(sql);
					String s = (String)a.get(0);
					int i = Integer.parseInt(s);
					System.out.println(i);
					String sql1="select name, branch, yop, add1,email, mob from alumni_details where id="+i;
					ArrayList hm=DBConnect.viewAlumniProfile(sql1);
					session.setAttribute("a_prof",hm);
					session.setAttribute("ap",a);
					session.setAttribute("content_page","aprofile.jsp");
					res.sendRedirect("alumni/template.jsp");		
				}
				else if(action.equals("PostSc")){
					int sid=Integer.parseInt(req.getParameter("sId"));
					int rid=Integer.parseInt(req.getParameter("rId"));
					String msg=req.getParameter("msg");
					String from=(String)((ArrayList)session.getAttribute("ap")).get(1);
					String sql="insert into alu_msg_details (sid,rid,msg,date,fro) values("+sid+","+rid+",'"+msg+"',NOW(),'"+from+"')";
					System.out.println (sql);
					int a=DBConnect.updateQuery(sql);
					session.setAttribute("content_page","messageadd.jsp");
					res.sendRedirect("alumni/template.jsp");		
				}
				else if(action.equals("View")){
					int id=Integer.parseInt(req.getParameter("id"));
					String sql="select sid,msg,date,fro from alu_msg_details where rid="+id;
					ArrayList al=DBConnect.viewScrap(sql);	
					session.setAttribute("alu-scr",al);
					session.setAttribute("content_page","messageList.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("logOff")){
					System.out.println ("alumni logoff--------------");
					session.setAttribute("content_page", null);
					res.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
				     res.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
				     res.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
				     res.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
					session.invalidate();
				     res.sendRedirect("login.jsp");		
				}
				else if(action.equals("Friend")){
					//System.out.println ("alumni logoff--------------");
					int id=Integer.parseInt(req.getParameter("id"));
					//session.setAttribute("aid",id+"");
					session.setAttribute("content_page","findAlum.jsp");				
					res.sendRedirect("alumni/template.jsp");		
				}
				else if(action.equals("Content")){
					session.setAttribute("content_page","aprofile.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("Edit")){
					int id=Integer.parseInt(req.getParameter("id"));
					System.out.println(id);
					String sql="select id, name, branch, yop, add1, email, mob from alumni_details where id="+id;
					ArrayList ea=DBConnect.editAlumni(sql);
					session.setAttribute("editAlu",ea);
					session.setAttribute("content_page","editalumni.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("AlumEdit")){
					int id=Integer.parseInt(req.getParameter("aId"));
					String name=req.getParameter("aName");
					System.out.println(id);
					String bname=req.getParameter("bname");
					String yop=req.getParameter("yop");
					String mob=req.getParameter("mobile");
					String email=req.getParameter("email");
					String add1=req.getParameter("add1");
					String sql="update alumni_details set name='"+name+"', branch='"+bname+"', yop='"+yop+"', add1='"+add1+"', email='"+email+"', mob='"+mob+"' where id="+id;
					int ai=DBConnect.updateQuery(sql);
					session.setAttribute("content_page","editsuccess.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("Scrap")){
					String id=req.getParameter("rId");
					session.setAttribute("idAlu",id);
					session.setAttribute("content_page","newmessage.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("Invitation")){
					System.out.println ("alumni Invitation--------------");
					String sql="select heading,msg,date from invitation";
					ArrayList inv=DBConnect.viewInvitation(sql);
					session.setAttribute("inv",inv);
					System.out.println (inv);
					session.setAttribute("content_page","invitation.jsp");
					res.sendRedirect("alumni/template.jsp");		
				}
				else if(action.equals("FindA")){
					String aname=req.getParameter("aName");
					String yop=req.getParameter("yop");
					String bname=req.getParameter("bname");
					String sql="select name,branch,yop,add1,email,mob,id from alumni_details where name LIKE '"+aname+"%' and branch='"+bname+"' and yop='"+yop+"'";
					System.out.println (sql);
					ArrayList al=DBConnect.alumlist(sql);
					session.setAttribute("aLLL",al);
					System.out.println (al);
					session.setAttribute("content_page","alumList.jsp");
					res.sendRedirect("alumni/template.jsp");		
				}
			}
		}
}