package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Contact</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "headContent.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navBar.jsp", out, false);
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("            <div class=\"card col s12 l10 m10 offset-s0 offset-m1 offset-l1\">\n");
      out.write("                <div class=\"card-content\">\n");
      out.write("                    <span class=\"card-title\">Contact Us</span>\n");
      out.write("                    <form method=\"post\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">perm_identity</i>\n");
      out.write("                                <input type=\"text\" id=\"name\" name=\"name\" class=\"validate\" required=\"required\">\n");
      out.write("                                <label for=\"name\">Name</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">email</i>\n");
      out.write("                                <input class=\"validate\" type=\"email\" name=\"email\" id=\"email\" required=\"required\"/>\n");
      out.write("                                <label for=\"email\">E-mail</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">phone</i>\n");
      out.write("                                <input type=\"tel\" id=\"phone\" name=\"phone\" >\n");
      out.write("                                <label for=\"phone\">Phone</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">web</i>\n");
      out.write("                                <input type=\"url\" id=\"web\" name=\"web\">\n");
      out.write("                                <label for=\"web\">Website</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"input-field col s12 l12 m12\">\n");
      out.write("                            <i class=\"material-icons prefix\">message</i>\n");
      out.write("                            <textarea class=\"materialize-textarea\" id=\"message\" name=\"message\" length=\"5000\" ></textarea>\n");
      out.write("                            <label for=\"message\">Message</label>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"input-field col s6 l6 m6\">\n");
      out.write("                            <button type=\"submit\" name=\"send\" value=\"send\" class=\"btn waves-light waves-effect\">Send\n");
      out.write("                                <i class=\"material-icons right\">send</i>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                    ");
      db.Database bn = null;
      synchronized (_jspx_page_context) {
        bn = (db.Database) _jspx_page_context.getAttribute("bn", PageContext.PAGE_SCOPE);
        if (bn == null){
          bn = new db.Database();
          _jspx_page_context.setAttribute("bn", bn, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("                    ");
 
                        String name = request.getParameter("name");
                        String email = request.getParameter("email");
                        String phone = request.getParameter("phone");
                        String web = request.getParameter("web");
                        String message = request.getParameter("message");
                        //out.print(message);
                        if(request.getParameter("send")!=null){
                            boolean flag = bn.sendQuery(name, email, phone, web, message);
                            if(flag==true) out.print("<span class=\"green-text text-darken-1\">Query Sent Succesfully</span>");
                            else out.print("<span class=\"red-text text-darken-3\">Can't Send Query</span>");
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
