package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class updateTruckInfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    ");
  if(session.getAttribute("user")==null) response.sendRedirect("login.jsp");
        else if (request.getParameter("tnum")==null) response.sendRedirect("findTruck.jsp");
        
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Update Truck Info</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "headContent.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navBar.jsp", out, false);
      out.write("\n");
      out.write("    ");
 
    if(request.getParameter("tnum")!=null){
        
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"card\">\n");
      out.write("                    <span class=\"card-title\">Truck Number ");
      out.print(request.getParameter("tnum"));
      out.write("</span>\n");
      out.write("                    <div class=\"card-content\">\n");
      out.write("                    <form>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s6 l2 m2\"><p>Insurance:</p></div>\n");
      out.write("                        <div class=\"col s6 l3 m4\">\n");
      out.write("                            <div class=\"switch\">\n");
      out.write("                                <label>\n");
      out.write("                                    No\n");
      out.write("                                    <input id=\"insureCheck\" name=\"insurance\" value=\"1\" type=\"checkbox\">\n");
      out.write("                                    <span class=\"lever\"></span>\n");
      out.write("                                    Yes\n");
      out.write("                                </label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col s12 l7 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">security</i>\n");
      out.write("                                <input type=\"text\" class=\"validate\" id=\"insurance\" name=\"insuranceCompany\" disabled=\"disabled\">\n");
      out.write("                                <label for=\"insurance\">Insurance Company</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">shopping_cart</i>\n");
      out.write("                                <input class=\"validate\" type=\"text\" id=\"owner\" name=\"ownerName\" required>\n");
      out.write("                                <label for=\"owner\">Owner</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col s12 l6 m6\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <i class=\"material-icons prefix\">phone</i>\n");
      out.write("                                <input class=\"validate\" type=\"tel\" id=\"mobile\" name=\"OwnerTel\" required>\n");
      out.write("                                <label for=\"tel\">Mobile</label>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col s12 m6 l6\">\n");
      out.write("                           <label>Route from:</label>\n");
      out.write("                           <select name=\"from\" required>\n");
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
      out.write("                        <div class=\"col s12 m6 l6\">\n");
      out.write("                           <label>To:</label>\n");
      out.write("                           <select name=\"to\" required>\n");
      out.write("                                <option value=\"\" disabled selected>Branch Name</option>\n");
      out.write("                                    ");

                                        for(int i=0;i<al.size();i++){
                                            out.println("<option value=\""+al.get(i)+"\">"+al.get(i)+"</option>");
                                        }
                                        
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"input-field col s6 l6 m6\">\n");
      out.write("                            <button type=\"submit\" name=\"update\" value=\"update\" class=\"btn waves-light waves-effect\">Update\n");
      out.write("                                <i class=\"material-icons right\">save</i>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        ");

                            
                            
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        ");

    }
    
      out.write("\n");
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
