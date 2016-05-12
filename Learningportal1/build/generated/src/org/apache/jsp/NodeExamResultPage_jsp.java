package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class NodeExamResultPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body color=\"Wheat\">\n");
      out.write("        \n");
      out.write("         <div class=\"container\">\n");
      out.write("\n");
      out.write("           \n");
      out.write("            <div class=\"jumbotron\">\n");
      out.write("          <h1>Result Page</h1> \n");
      out.write("        ");

        
            int jcount=0;
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = null;

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mteachdb", "root", "root");


            String a1 = request.getParameter("q1");
            PreparedStatement ps = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps.setString(1, "1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                String str1 = rs.getString(1);
                if (str1.equalsIgnoreCase(a1)) {
                    jcount++;
                }
            }

            String a2 = request.getParameter("q2");
            PreparedStatement ps2 = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps2.setString(1, "2");
            ResultSet rs2 = ps2.executeQuery();

            while (rs2.next()) {

                String str1 = rs2.getString(1);
                if (str1.equalsIgnoreCase(a2)) {
                    jcount++;
                }
            }


            String a3 = request.getParameter("q3");
            PreparedStatement ps3 = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps3.setString(1, "3");
            ResultSet rs3 = ps3.executeQuery();

            while (rs3.next()) {

                String str1 = rs3.getString(1);
                if (str1.equalsIgnoreCase(a3)) {
                    jcount++;
                }
            }

            String a4 = request.getParameter("q4");
            PreparedStatement ps4 = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps4.setString(1, "4");
            ResultSet rs4 = ps4.executeQuery();

            while (rs4.next()) {

                String str1 = rs4.getString(1);
                if (str1.equalsIgnoreCase(a4)) {
                    jcount++;
                }
            }
            String a5 = request.getParameter("q5");
            PreparedStatement ps5 = con.prepareStatement("select Ans from AnsKeys WHERE questID=?;");
            ps5.setString(1, "5");
            ResultSet rs5 = ps5.executeQuery();

            while (rs5.next()) {

                String str1 = rs5.getString(1);
                if (str1.equalsIgnoreCase(a5)) {
                    jcount++;
                }
            }
            
            
          
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <h1> Marks for Node examination ");
      out.print(jcount);
      out.write("</h1>\n");
      out.write("        <a href=\"index.html\">HOME</a>\n");
      out.write("         </div></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
