<%-- 
    Document   : logout
    Created on : Jul 14, 2016, 8:25:36 AM
    Author     : Mradul Verma <mohit00fbd@gmail.com>
--%>

<%
    Cookie[] cookies = request.getCookies();
    Cookie cookie=null;
    for(int i=0;i<cookies.length;i++){
        if(cookies[i].getName().equals("user")) cookie=cookies[i];
    }
    if(cookie!=null&&cookie.getValue()!=null){ 
        cookie.setMaxAge(0);
        response.addCookie(cookie);
    }
    session.setAttribute("user", null);
    
    response.sendRedirect("index.jsp");
    %>
