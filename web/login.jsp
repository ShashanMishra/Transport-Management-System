<%-- 
    Document   : login
    Created on : Jul 6, 2016, 7:18:57 PM
    Author     : Mradul Verma <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | TMS</title>
        <jsp:include page="headContent.jsp"></jsp:include>
    </head>
    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
        <div class="row">
                <div class="card col s12 l4 m6 offset-s0 offset-m3 offset-l4">
                    <div class="card-content">
                        <span class="card-title">Login</span>
                        <form method="POST">
                        <div class="row">
                            <label>Select Branch</label>
                                <select name="branch">
                                    <option value="" disabled selected>Branch Name</option>
                                    <jsp:useBean id="bn" class="db.Database"></jsp:useBean>
                                    <%
                                        ArrayList<String> al = bn.getBranch();
                                        for(int i=0;i<al.size();i++){
                                            out.println("<option value=\""+al.get(i)+"\">"+al.get(i)+"</option>");
                                        }
                                        %>
                                </select>
                        </div>
                        <div class="row">
                        <div class="input-field">
                            <i class="material-icons prefix">account_circle</i>
                            <input type="text" id="uname" name="uname" class="validate" required="required">
                            <label for="uname">Username</label>
                        </div>
                        </div>
                        <div class="row">
                        <div class="input-field">
                            <i class="material-icons prefix">vpn_key</i>
                            <input class="validate" type="password" name="passwd" id="passwd" required="required"/>
                            <label for="passwd">Password</label>
                        </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12 l6 m6">
                                <input value="true" type="checkbox" name="remember" id="remember">
                                <label for="remember">Remeber me</label>
                            </div>
                        </div>
                        <div class="row">
                        <div class="input-field col s6 l6 m6">
                            <button type="submit" class="btn waves-light waves-effect" name="userButton">Manager
                                <i class="material-icons right">send</i>
                            </button>
                           
                        </div>
                            
                        <div class="input-field col s6 l6 m6">
                             <button type="submit" class="btn waves-light waves-effect" name="adminButton">Admin
                                <i class="material-icons right">build</i>
                            </button>
                        </div>
                        </div>
                        <div class="row">
                        <%  
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
                        %>
                        </div>
                    </form>
                    </div>
                </div>
        </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
