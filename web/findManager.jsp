<%-- 
    Document   : findManager
    Created on : Jul 7, 2016, 8:43:38 AM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" import="java.util.ArrayList" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Manager</title>
        <jsp:include page="headContent.jsp"></jsp:include>
    </head>
    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
                <div class="row">
                <div class="card col s12 l4 m4 offset-s0 offset-l2 offset-m1">
                    <div class="card-content">
                        <span class="card-title">Find Manager</span>
                    <form>
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
                            <i class="material-icons prefix">face</i>
                            <input type="text" id="name" name="name" class="validate" required="required">
                            <label for="name">Name</label>
                        </div>
                        </div>
                        <div class="row">
                        <div class="input-field col s6 l6 m6">
                            <button type="submit" name="find" class="btn waves-light waves-effect">Find
                                <i class="material-icons right">search</i>
                            </button>
                           
                        </div>
                        </div>
                    </form>
                    </div>
                </div>
                    <div class="card col s12 m4 l3 offset-s0 offset-l1 offset-m1">
                        <div class="card-content">
                            <span class="card-title">Operations</span>
                            <div class="row">
                                <ul>
                                    <div class="row">
                                    <li><a href="createManager.jsp"><i class="material-icons left">fiber_new</i>Create New Manager</a></li>
                                    </div>
                                    <div class="row">
                                    <li><a href="newTruck.jsp"><i class="material-icons left">directions_transit</i>Install New Truck</a></li>
                                    </div>
                                    <div class="row">
                                    <li><a href="findTruck.jsp"><i class="material-icons left">search</i>Search Truck</a></li>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
        </div>
    <%
        if(request.getParameter("name")!=null&&request.getParameter("find")!=null){
            if(request.getParameter("branch")==null)
                out.print("<span class=\"blue-text text-darken-2\">Please Select Branch</span>");
            else{
    %>
                <div class="row">
                    <div class="card col s12 m8 l8 offset-s0 offset-l2 offset-m2">
                        <span class="card-title">Managers</span>
                        <div class="card-content">
                            <table class="highlight responsive-table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Date Of Birth</th>
                                    <th>Date Of Joining</th>
                                    <th>Branch</th>
                                    <th>Salary</th>
                                    <%if(session.getAttribute("user")!=null&&session.getAttribute("user").equals("admin")){%>
                                    <th>Delete</th>
                                    <%}%>
                                </tr>
                            </thead>
                            <tbody>
                            <%  String branch = request.getParameter("branch");
                                String name = request.getParameter("name");
                                ArrayList<ArrayList<String>> a = bn.getManager(branch,name);
                                for(int i=0;i<a.size();i++){
                                    out.print("<tr>");
                                    for(int j=0;j<a.get(i).size()+1;j++){
                                        if(j<a.get(i).size())
                                        out.print("<td>"+a.get(i).get(j)+"</td>");
                                        else{
                                            if(session.getAttribute("user")!=null&&session.getAttribute("user").equals("admin"))
                                                out.print("<td><a href=\"deleteManager.jsp?name="+a.get(i).get(0)
                                                        +"&branch="+a.get(i).get(3)+"\"><button "+
                                              "class=\"btn waves-light waves-effect\">Delete</button></a></td>" );
                                    }
                                    }
                                    out.print("</tr>");
                                }
                                %>
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
        <%  }
        }
    %>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
