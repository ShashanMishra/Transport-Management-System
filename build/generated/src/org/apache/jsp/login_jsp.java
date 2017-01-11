package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login | TMS</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "headContent.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navBar.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("                <div class=\"card col s12 l4 m6 offset-s0 offset-m3 offset-l4\">\n");
      out.write("                    <div class=\"card-content\">\n");
      out.write("                        <span class=\"card-title\">Login</span>\n");
      out.write("                        <form method=\"POST\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <label>Select Branch</label>\n");
      out.write("                                <select name=\"branch\">\n");
      out.write("                                    <option value=\"\" disabled selected>Branch Name</option>\n");
      out.write("                                    ");
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
      out.write("                                </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"material-icons prefix\">account_circle</i>\n");
      out.write("                            <input type=\"text\" id=\"uname\" name=\"uname\" class=\"validate\" required=\"required\">\n");
      out.write("                            <label for=\"uname\">Username</label>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"material-icons prefix\">vpn_key</i>\n");
      out.write("                            <input class=\"validate\" type=\"password\" name=\"passwd\" id=\"passwd\" required=\"required\"/>\n");
      out.write("                            <label for=\"passwd\">Password</label>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"input-field col s12 l6 m6\">\n");
      out.write("                                <input value=\"true\" type=\"checkbox\" name=\"remember\" id=\"remember\">\n");
      out.write("                                <label for=\"remember\">Remeber me</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"input-field col s6 l6 m6\">\n");
      out.write("                            <button type=\"submit\" class=\"btn waves-light waves-effect\" name=\"userButton\">Manager\n");
      out.write("                                <i class=\"material-icons right\">send</i>\n");
      out.write("                            </button>\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                            \n");
      out.write("                        <div class=\"input-field col s6 l6 m6\">\n");
      out.write("                             <button type=\"submit\" class=\"btn waves-light waves-effect\" name=\"adminButton\">Admin\n");
      out.write("                                <i class=\"material-icons right\">build</i>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        ");
  
                            String uname = request.getParameter("uname");
                            String passwd = request.getParameter("passwd");
                            String branch = request.getParameter("branch");
                            Cookie cookie = new Cookie("user",null);
                            if(uname!=null&&passwd!=null&&request.getParameter("userButton")!=null){
                                if(branch==null) out.print("<span class=\"blue-text text-darken-4\">Please select Branch Name</span>");
                                else {
                                    if(bn.login(uname,passwd,branch)){
                                        session.setAttribute("user", uname);
                                        if(request.getParameter("remember")!=null){
                                            cookie = new Cookie("user",uname);
                                            cookie.setMaxAge(24*60*60);
                                            response.addCookie(cookie);
                                        }
                                        response.sendRedirect("findManager.jsp");
                                    }
                                    else{
                                        out.print("<span class=\"red-text text-darken-3\">Invalid Username or Password and Branch Combination.</span>");
                                    }
                                }
                            }
                            else if(uname!=null&&passwd!=null&&request.getParameter("adminButton")!=null){
                                if(bn.login(uname,passwd)){
                                    session.setAttribute("user",uname);
                                    if(request.getParameter("remember")!=null){
                                        cookie = new Cookie("user",uname);
                                        cookie.setMaxAge(24*60*60);
                                        response.addCookie(cookie);
                                    }
                                    response.sendRedirect("findManager.jsp");
                                }
                                else{
                                        out.print("<span class=\"red-text text-darken-3\">Invalid Username or Password and Branch .</span>");
                                }
                            }
                        
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
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
