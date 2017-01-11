package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class createManager_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
  
    if(session.getAttribute("user")==null||(!session.getAttribute("user").toString().equals("admin"))){
        response.sendRedirect("login.jsp");
    }

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Create Manager</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "headContent.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navBar.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"card col s12 l10 m10 offset-s0 offset-m1 offset-l1\">\n");
      out.write("                <div class=\"card-content\">\n");
      out.write("                    <span class=\"card-title\">Create New Manager</span>\n");
      out.write("                <form>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <label>Select Branch</label>\n");
      out.write("                            <select name=\"branch\">\n");
      out.write("                                <option value=\"\" disabled selected>Branch Name</option>\n");
      out.write("                                ");
      db.Database bn = null;
      synchronized (_jspx_page_context) {
        bn = (db.Database) _jspx_page_context.getAttribute("bn", PageContext.PAGE_SCOPE);
        if (bn == null){
          bn = new db.Database();
          _jspx_page_context.setAttribute("bn", bn, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("                                    ");

                                        ArrayList<String> al = bn.getBranch();
                                        for(int i=0;i<al.size();i++){
                                            out.println("<option value=\""+al.get(i)+"\">"+al.get(i)+"</option>");
                                        }
                                        
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">perm_identity</i>\n");
      out.write("                                <input type=\"text\" id=\"name\" name=\"name\" class=\"validate\" required=\"required\">\n");
      out.write("                                <label for=\"uname\">Name</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">account_circle</i>\n");
      out.write("                                <input type=\"text\" id=\"uname\" name=\"uname\" class=\"validate\" required=\"required\">\n");
      out.write("                                <label for=\"uname\">Username</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">vpn_key</i>\n");
      out.write("                                <input class=\"validate\" type=\"password\" name=\"passwd\" id=\"passwd\" required=\"required\"/>\n");
      out.write("                                <label for=\"passwd\">Password</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">child_care</i>\n");
      out.write("                                <input class=\"datepicker\" type=\"date\" name=\"dob\" id=\"dob\" name=\"date\" required>\n");
      out.write("                                <label for=\"dob\">Date Of Birth</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">date_range</i>\n");
      out.write("                                <input class=\"datepicker\" type=\"date\" name=\"doj\" id=\"doj\" name=\"doj\" required>\n");
      out.write("                                <label for=\"doj\">Date Of Joining</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-field col s12 l6 m6\">\n");
      out.write("                            <i class=\"material-icons prefix\">attach_money</i>\n");
      out.write("                            <input type=\"number\" name=\"salary\" id=\"salary\">\n");
      out.write("                            <label for=\"salary\">Salary</label>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"input-field col s6 l6 m6\">\n");
      out.write("                            <button type=\"submit\" name=\"create\" value=\"create\" class=\"btn waves-light waves-effect\">Create\n");
      out.write("                                <i class=\"material-icons right\">create</i>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        ");

                            String branch = request.getParameter("branch");
                            String name = request.getParameter("name");
                            String uname = request.getParameter("uname");
                            String passwd = request.getParameter("passwd");
                            String dob = request.getParameter("dob");
                            String doj = request.getParameter("doj");
                            String salary = request.getParameter("salary");
                            if(request.getParameter("create")!=null){
                                if(branch==null){
                                    out.print("<span class=\"blue-text text-darken-2\">Please Select Branch</span>");
                                }
                                else{
                                    boolean flag = bn.createManager(branch,name,uname,passwd,dob,doj,salary);
                                    if(flag==true) out.print("<span class=\"green-text text-darken-2\">Manager Created Successfully.</span>");
                                    else out.print("<span class=\"red-text text-darken-4\">Error! Manager Can't Be Created.</span>");
                                }
                            }
                            
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
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
