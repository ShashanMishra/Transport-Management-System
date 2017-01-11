<%-- 
    Document   : welcome
    Created on : Jul 14, 2016, 8:22:49 AM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>
<%  Cookie[] cookies = request.getCookies();
    Cookie cookie=null;
    if(cookies!=null)
    for(int i=0;i<cookies.length;i++){
        if(cookies[i].getName().equals("user")){
            cookie=cookies[i];
        }
    }
    if(cookie!=null){
    //out.print("cookie Name: "+cookie.getName()+"value: "+cookie.getValue());
    if(cookie.getValue()!=null){
        session.setAttribute("user", cookie.getValue());
    }}
    if(session.getAttribute("user")==null){
        String uri = request.getRequestURI();
        String pagename = uri.substring(uri.lastIndexOf("/")+1);
            if(!pagename.equals("login.jsp"))
              out.print("<li><a href=\"login.jsp\"><i class=\"material-icons left\">fingerprint</i>Login</a></li>");
    }
              else{
                    String u =session.getAttribute("user").toString();
                    out.print("<li><a href=\"logout.jsp\"><i class=\"material-icons left\">"
                            +"https</i>Logout</a></li>");
                    out.print("<li><a href=\"#\""
                    +"><i class=\"material-icons left\">"
                    +"perm_identity</i>Welcome "+u+
                    "</a></li>");
          }%>
