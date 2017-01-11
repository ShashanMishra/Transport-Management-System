<%-- 
    Document   : newTruck
    Created on : Jul 7, 2016, 10:59:40 AM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" import="java.util.ArrayList" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Routes</title>
        <jsp:include page="headContent.jsp"></jsp:include>
    </head>
    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
        <div class="row">
            <div class="card col s12 l10 m10 offset-s0 offset-m1 offset-l1">
                <div class="card-content">
                    <span class="card-title">Routes</span>
                <form>
                    <div class="row">
                        <div class="col s12 m6 l6">
                           <label>Route from:</label>
                           <select name="from" required="required">
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
                        <div class="col s12 m6 l6">
                           <label>To:</label>
                           <select name="to" required="required">
                              <option value="" disabled selected>Branch Name</option>
                                    <%
                                        for(int i=0;i<al.size();i++){
                                            out.println("<option value=\""+al.get(i)+"\">"+al.get(i)+"</option>");
                                        }
                                        %>
                            </select>
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
                        <%  if(request.getParameter("find")!=null){
                            String from = request.getParameter("from");
                            String to = request.getParameter("to");
                            if(from.equals(to)) out.print("<span class=\"blue-text text-lighten-2\">"+
                                    "Destination And Source Can't Be Same!</span>");
                            else{
                                ArrayList<ArrayList<String>> a = bn.getRoutes(from, to);
                                if(a.size()==0) out.print("<span class=\"red-text text-darken-4\">Can't Find Truck On This Route.</span>");
                                else{%>
                                <table class="highlight responsive-table">
                                    <thead>
                                        <tr>
                                            <td>Truck Number</td>
                                            <td>Owner Name</td>
                                            <td>From</td>
                                            <td>To</td>
                                            <td>Status</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            for(int i=0;i<a.size();i++){
                                    out.print("<tr>");
                                    for(int j=0;j<a.get(i).size();j++){
                                        out.print("<td>"+a.get(i).get(j)+"</td>");
                                    }
                                    out.print("</tr>");
                                }
                                            %>
                                    </tbody>
                                </table>
                                        <%
                                }
                            }
                        }%>
                    </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
