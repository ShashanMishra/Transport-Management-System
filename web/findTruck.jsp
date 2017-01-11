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
        <title>Find Truck</title>
        <jsp:include page="headContent.jsp"></jsp:include>
    </head>
    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
                <div class="row">
                <div class="card col s12 l4 m4 offset-s0 offset-l2 offset-m1">
                    <div class="card-content">
                        <span class="card-title">Find Truck</span>
                    <form>
                        <div class="row">
                        <div class="input-field">
                            <i class="material-icons prefix">directions_bus</i>
                            <input type="text" id="tnumber" name="tnumber" class="validate" required="required">
                            <label for="tnumber">Number</label>
                        </div>
                        </div>
                        <div class="row">
                        <div class="input-field col s6 l6 m6">
                            <button type="submit" name="find" class="btn waves-light waves-effect">Find
                                <i class="material-icons right">search</i>
                            </button>
                           
                        </div>
                        </div>
                        <div class="row">
                             <jsp:useBean id="bn" class="db.Database"></jsp:useBean>
                    <%
                        String tnumber = request.getParameter("tnumber");
                        ArrayList<ArrayList<String>> a = new ArrayList();
        if(tnumber!=null&&request.getParameter("find")!=null){
            a = bn.getTruck(tnumber);
            if(a.size()==0) out.print("<span class=\"red-text text-darken-3\">Truck Not Found</span>");
        }
    %>
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
    <%  if(request.getParameter("find")!=null&&a.size()!=0){
        
    %>
                <div class="row">
                    <div class="card col s12 m8 l8 offset-s0 offset-l2 offset-m2">
                        <span class="card-title">Trucks</span>
                        <div class="card-content">
                            <table class="highlight responsive-table">
                            <thead>
                                <tr>
                                    <th>Number</th>
                                    <th>Model</th>
                                    <th>Owner</th>
                                    <th>From</th>
                                    <th>To</th>
                                    <th>Insurance</th>
                                    <th>Company</th>
                                    <th>Status</th>
                                    <%if(session.getAttribute("user")!=null){%>
                                    <th>Update</th>
                                    <%}%>
                                </tr>
                            </thead>
                            <tbody>
                            <%  
                                for(int i=0;i<a.size();i++){
                                    out.print("<tr>");
                                    for(int j=0;j<a.get(i).size()+1;j++){
                                        if(j<a.get(i).size())
                                        out.print("<td>"+a.get(i).get(j)+"</td>");
                                        else{
                                            if(session.getAttribute("user")!=null) out.print("<td><a href=\"updateTruckInfo.jsp?tnum="+a.get(i).get(0)+"\"><button "+
                                               "class=\"btn waves-light waves-effect\">Update</button></a></td>" );
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
    %>
                </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
