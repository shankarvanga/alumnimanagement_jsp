

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.codec.Base64.InputStream;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminServlet extends HttpServlet{
	class MyFooter extends PdfPageEventHelper {
		Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
 
        public void onEndPage(PdfWriter writer, Document document) {
            PdfContentByte cb = writer.getDirectContent();
            Phrase header = new Phrase("Chaitanya Bharathi Institute of Technology - Achievements List", boldFont);
            Phrase footer = new Phrase("  ");
            ColumnText.showTextAligned(cb, Element.ALIGN_CENTER,
                    header,
                    (document.right() - document.left()) / 2 + document.leftMargin(),
                    document.top() + 10, 0);
            ColumnText.showTextAligned(cb, Element.ALIGN_CENTER,
                    footer,
                    (document.right() - document.left()) / 2 + document.leftMargin(),
                    document.top() - 10, 0);
        }
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException{
		HttpSession session = req.getSession();
		String action = req.getParameter("Action");
		if(action.equals("postQuery")){
			String type = req.getParameter("type");
			if(type.equals("date")){
			System.out.println("In admin servlet");
			Connection con=DBConnect.prepareConn();
			try {
				Statement s=con.createStatement();
				String q=req.getParameter("query");
				String sql="select * from alumni_achievements where date='"+q+"'";
				ResultSet rs=s.executeQuery(sql);
				ArrayList total=new ArrayList();
				while(rs.next()){
					ArrayList temp=new ArrayList();
					temp.add(rs.getInt(1));
					temp.add(rs.getString(2));
					temp.add(rs.getString(3));
					temp.add(rs.getString(4));
					temp.add(rs.getString(5));
					temp.add(rs.getString(6));
					temp.add(rs.getBlob(7));
					total.add(temp);
					System.out.println(temp);
				}
				if(total.size()==0){
					session.setAttribute("content_page", "noresult.jsp");
					res.sendRedirect("admin/template.jsp");
				}
				else{
					session.setAttribute("queryResult", total);
					session.setAttribute("content_page", "pdfurl.jsp");
					res.sendRedirect("admin/template.jsp");
				}
			}
			 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			if(type.equals("rollno")){
				System.out.println("In admin servlet");
				Connection con=DBConnect.prepareConn();
				try {
					Statement s=con.createStatement();
					String q=req.getParameter("query");
					String sql="select * from alumni_achievements where rollno='"+q+"'";
					ResultSet rs=s.executeQuery(sql);
					ArrayList total=new ArrayList();
					while(rs.next()){
						ArrayList temp=new ArrayList();
						temp.add(rs.getInt(1));
						temp.add(rs.getString(2));
						temp.add(rs.getString(3));
						temp.add(rs.getString(4));
						temp.add(rs.getString(5));
						temp.add(rs.getString(6));
						temp.add(rs.getBlob(7));
						total.add(temp);
						System.out.println(temp);
					}
					if(total.size()==0){
						session.setAttribute("content_page", "noresult.jsp");
						res.sendRedirect("admin/template.jsp");
					}
					else{
						session.setAttribute("queryResult", total);
						session.setAttribute("content_page", "pdfurl.jsp");
						res.sendRedirect("admin/template.jsp");
					}
				}
				 catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				}
			if(type.equals("yop")){
				System.out.println("In admin servlet");
				Connection con=DBConnect.prepareConn();
				try {
					Statement s=con.createStatement();
					String q=req.getParameter("query");
					String sql="select * from alumni_achievements where yop='"+q+"'";
					ResultSet rs=s.executeQuery(sql);
					ArrayList total=new ArrayList();
					while(rs.next()){
						ArrayList temp=new ArrayList();
						temp.add(rs.getInt(1));
						temp.add(rs.getString(2));
						temp.add(rs.getString(3));
						temp.add(rs.getString(4));
						temp.add(rs.getString(5));
						temp.add(rs.getString(6));
						temp.add(rs.getBlob(7));
						total.add(temp);
						System.out.println(temp);
					}
					if(total.size()==0){
						session.setAttribute("content_page", "noresult.jsp");
						res.sendRedirect("admin/template.jsp");
					}
					else{
						session.setAttribute("queryResult", total);
						session.setAttribute("content_page", "pdfurl.jsp");
						res.sendRedirect("admin/template.jsp");
					}
				}
				 catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				}
		}
		else if(action.equals("Login")){
			ResultSet rs=null;
			Connection con = DBConnect.prepareConn();
			Statement s;
			try {
				s = con.createStatement();
				String mail=req.getParameter("userName");
				String pass=req.getParameter("userPass");
				rs = s.executeQuery("select * from admin_details where admin_name='"+mail+"' and admin_pass='"+pass+"'");
				if(rs.next()){
					session.setAttribute("adId", rs.getInt(1));
					session.setAttribute("content_page", "logged.jsp");
					res.sendRedirect("admin/template.jsp");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action.equals("download")){
			ArrayList response=(ArrayList) session.getAttribute("queryResult");
			res.setContentType("application/pdf");
			res.setHeader ("Content-Disposition", "attachment;filename="+"Achievements_List.pdf");
			try{
					int i=1;
					Document d =new Document();
					PdfWriter writer=PdfWriter.getInstance(d, res.getOutputStream());
					MyFooter event = new MyFooter();
			        writer.setPageEvent(event);
					d.open();
					Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
					PdfPTable table = new PdfPTable(6);
					table.addCell(new Phrase("Id", boldFont));
					table.addCell(new Phrase("Name", boldFont));
					table.addCell(new Phrase("Year of Pass", boldFont));
					table.addCell(new Phrase("Rollno", boldFont));
					table.addCell(new Phrase("Date", boldFont));
					table.addCell(new Phrase("Achievement", boldFont));
					while((i-1)<response.size()){
						ArrayList temp=(ArrayList) response.get(i-1);
						System.out.println(i+temp.get(0).toString());
					table.addCell(i+"");
					table.addCell(temp.get(1).toString());
					table.addCell(temp.get(2).toString());
					table.addCell(temp.get(3).toString());
					table.addCell(temp.get(4).toString());
					table.addCell(temp.get(5).toString());
					i++;
					}
					d.add(table);
					d.close();
					System.out.println(req.getContextPath());
			}
			catch(Exception e){
				
			}
		}
		else if(action.equals("proof")){
			Blob b=null;
			ResultSet rs=null;
			try{
				String id=req.getParameter("id");
				Connection con=DBConnect.prepareConn();
				Statement s=con.createStatement();
				res.setContentType("image/jpeg");
				String filename="Proof-"+req.getParameter("name")+".jpg";
				res.setHeader ("Content-Disposition", "attachment;filename="+filename);
				ServletOutputStream os=res.getOutputStream();
				rs=s.executeQuery("select proof from alumni_achievements where id="+id);
				while(rs.next())
				b=rs.getBlob(1);
				java.io.InputStream is=b.getBinaryStream();
				int length;
				 int bufferSize = 1024;
			      byte[] buffer = new byte[bufferSize];

			      while ((length = is.read(buffer)) != -1) {
			        System.out.println("writing " + length + " bytes"+length);
			        os.write(buffer, 0, length);
			      }
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{
		doPost(req, res);
	}
}
