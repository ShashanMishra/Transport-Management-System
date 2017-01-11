<%-- 
    Document   : showTruck
    Created on : Jul 8, 2016, 9:24:31 AM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" import="java.util.ArrayList" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trucks</title>
        <jsp:include page="headContent.jsp"></jsp:include>
    </head>
    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
    <div class="row">
        <div class="col s12 l8 m10 offset-l2 offset-m1">
            <div class="card">
                <div class="row center">
                    <br>
                <span class="card-title center">Truck Info</span>
                </div>
                <div class="card-content">
                    <table class="highlight responsive-table">
                        <thead>
                            <tr>
                                <th>Number</th>
                                <th>Model</th>
                                <th>Owner</th>
                                <th>From</th>
                                <th>To</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                        <jsp:useBean id="bn" class="db.Database"></jsp:useBean>
                        <%
                            ArrayList<ArrayList<String>> a = bn.getAllTrucks();
                                for(int i=0;i<a.size();i++){
                                    out.print("<tr>");
                                    for(int j=0;j<a.get(i).size()+1;j++){
                                        out.print("<td>"+a.get(i).get(j)+"</td>");
                                    }
                                    out.print("</tr>");
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
