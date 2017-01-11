<%-- 
    Document   : deleteManager
    Created on : Jul 15, 2016, 10:41:13 AM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="bn" class="db.Database"></jsp:useBean>
<%
    if(session.getAttribute("user")==null||(!session.getAttribute("user").equals("admin")))
        response.sendRedirect("findManager.jsp");
    else{
        bn.deleteManager(request.getParameter("name"), request.getParameter("branch"));
        response.sendRedirect("findManager.jsp");
    }
    %>
