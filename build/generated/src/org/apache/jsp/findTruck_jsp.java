package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class findTruck_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Find Manager</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "headContent.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navBar.jsp", out, false);
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("                <div class=\"card col s12 l4 m4 offset-s0 offset-l2 offset-m1\">\n");
      out.write("                    <div class=\"card-content\">\n");
      out.write("                        <span class=\"card-title\">Find Truck</span>\n");
      out.write("                    <form>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"material-icons prefix\">directions_bus</i>\n");
      out.write("                            <input type=\"text\" id=\"tnumber\" name=\"tnumber\" class=\"validate\" required=\"required\">\n");
      out.write("                            <label for=\"tnumber\">Number</label>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <div class=\"input-field col s6 l6 m6\">\n");
      out.write("                            <button type=\"submit\" name=\"find\" class=\"btn waves-light waves-effect\">Find\n");
      out.write("                                <i class=\"material-icons right\">search</i>\n");
      out.write("                            </button>\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                             ");
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

                        String tnumber = request.getParameter("tnumber");
                        ArrayList<ArrayList<String>> a = new ArrayList();
        if(tnumber!=null&&request.getParameter("find")!=null){
            a = bn.getTruck(tnumber);
            if(a.size()==0) out.print("<span class=\"red-text text-darken-3\">Truck Not Found</span>");
        }
    
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                    <div class=\"card col s12 m4 l3 offset-s0 offset-l1 offset-m1\">\n");
      out.write("                        <div class=\"card-content\">\n");
      out.write("                            <span class=\"card-title\">Operations</span>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <li><a href=\"createManager.jsp\"><i class=\"material-icons left\">fiber_new</i>Create New Manager</a></li>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                    <li><a href=\"newTruck.jsp\"><i class=\"material-icons left\">directions_transit</i>Install New Truck</a></li>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <li><a href=\"findTruck.jsp\"><i class=\"material-icons left\">search</i>Search Truck</a></li>\n");
      out.write("                                    </div>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("        </div>\n");
      out.write("    ");
  if(request.getParameter("find")!=null&&a.size()!=0){
        
    
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"card col s12 m8 l8 offset-s0 offset-l2 offset-m2\">\n");
      out.write("                        <span class=\"card-title\">Trucks</span>\n");
      out.write("                        <div class=\"card-content\">\n");
      out.write("                            <table class=\"highlight responsive-table\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Number</th>\n");
      out.write("                                    <th>Model</th>\n");
      out.write("                                    <th>Owner</th>\n");
      out.write("                                    <th>From</th>\n");
      out.write("                                    <th>To</th>\n");
      out.write("                                    <th>Insurance</th>\n");
      out.write("                                    <th>Company</th>\n");
      out.write("                                    <th>Status</th>\n");
      out.write("                                    <th>Update</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                            ");
  
                                for(int i=0;i<a.size();i++){
                                    out.print("<tr>");
                                    for(int j=0;j<a.get(i).size()+1;j++){
                                        if(j<a.get(i).size())
                                        out.print("<td>"+a.get(i).get(j)+"</td>");
                                        else out.print("<td><a href=\"updateTruckInfo.jsp?tnum=a.get(i).get(0)\"><button "+
                                               "class=\"btn waves-light waves-effect\">Update</button></a></td>" );
                                    }
                                    out.print("</tr>");
                                }
                                
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("        ");
  }
    
      out.write("\n");
      out.write("                </div>\n");
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
