package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <html>\n");
      out.write("    <head>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "headContent.jsp", out, false);
      out.write("\n");
      out.write("        <title>Transport Management System</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navBar.jsp", out, false);
      out.write("\n");
      out.write("    <div class=\"parallax-container\">\n");
      out.write("        <div class=\"parallax\"><img src=\"img/1.jpg\"></div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"section white\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row center\">\n");
      out.write("            <h3>What We Do?</h3>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col s4\">\n");
      out.write("              <div class=\"center promo promo-example\">\n");
      out.write("                <i class=\"material-icons large\">flash_on</i>\n");
      out.write("                <p class=\"promo-caption\">Speeds up delivery</p>\n");
      out.write("                <p class=\"light center\">We did most of the heavy lifting for you\n");
      out.write("                    to provide all round hassle free transportation \n");
      out.write("                    that incorporate our versatile components.</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col s4\">\n");
      out.write("              <div class=\"center promo promo-example\">\n");
      out.write("                <i class=\"material-icons large\">group</i>\n");
      out.write("                <p class=\"promo-caption\">User Experience Focused</p>\n");
      out.write("                <p class=\"light center\">By utilizing elements and principles of \n");
      out.write("                    Material Design, we were able to create a Transport Management\n");
      out.write("                    System that focuses on User Experience.</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col s4\">\n");
      out.write("              <div class=\"center promo promo-example\">\n");
      out.write("                <i class=\"material-icons large\">settings</i>\n");
      out.write("                <p class=\"promo-caption\">Easy to work with</p>\n");
      out.write("                <p class=\"light center\">We have provided detailed documentation \n");
      out.write("                    as well as specific examples to help new users get started.</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("    <div class=\"parallax-container\">\n");
      out.write("    <div class=\"parallax\"><img src=\"img/10.jpg\"></div>\n");
      out.write("  </div>\n");
      out.write("    <div class=\"section white\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <h4 class=\"center\">Services</h4>\n");
      out.write("                <div class=\"col s4\">\n");
      out.write("                    <ul><div class=\"row\">\n");
      out.write("                        <li><a href=\"contact.jsp\"><i class=\"material-icons left\">contacts</i>Contact Administrators</a></li>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                        <li><a href=\"findTruck.jsp\"><i class=\"material-icons left\">search</i>Search Vehicles</a></li>\n");
      out.write("                        </div><div class=\"row\">\n");
      out.write("                        <li><a href=\"routes.jsp\"><i class=\"material-icons left\">directions_bus</i>Routes</a></li>\n");
      out.write("                        </div>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col s4\">\n");
      out.write("                    <ul><div class=\"row\">\n");
      out.write("                        <li><a href=\"createManager.jsp\"><i class=\"material-icons left\">group_add</i>Recruit Managers</a></li>\n");
      out.write("                        </div><div class=\"row\">\n");
      out.write("                        <li><a href=\"login.jsp\"><i class=\"material-icons left\">security</i>Security</a></li>\n");
      out.write("                        </div><div class=\"row\">\n");
      out.write("                        <li><a href=\"showTruck.jsp\"><i class=\"material-icons left\">list</i>List All Vehicles</a></li>\n");
      out.write("                        </div>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col s4\">\n");
      out.write("                    <ul><div class=\"row\">\n");
      out.write("                        <li><a href=\"findManager.jsp\"><i class=\"material-icons left\">search</i>Search Managers</a></li>\n");
      out.write("                        </div><div class=\"row\">\n");
      out.write("                        <li><a href=\"newTruck.jsp\"><i class=\"material-icons left\">add</i>Add New Vehicles</a></li>\n");
      out.write("                        </div><div class=\"row\">\n");
      out.write("                        <li><a href=\"#!\"><i class=\"material-icons left\">more</i>And Much More</a></li>\n");
      out.write("                        </div>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("  <div class=\"parallax-container\">\n");
      out.write("    <div class=\"parallax\"><img src=\"img/5.jpg\"></div>\n");
      out.write("  </div>\n");
      out.write("    <div class=\"section white\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <h4 class=\"center\">Keeping Your Trust Is Our Responsibility.</h4>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("  </html>");
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
