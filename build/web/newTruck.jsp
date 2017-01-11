<%-- 
    Document   : newTruck
    Created on : Jul 7, 2016, 10:59:40 AM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" import="java.util.ArrayList" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  //out.print(session.getAttribute("user"));
    if(session.getAttribute("user")==null)
    {
        //out.print(session.getAttribute("user"));
        response.sendRedirect("logout.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Install New Truck</title>
        <jsp:include page="headContent.jsp"></jsp:include>
    </head>
    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
        <div class="row">
            <div class="card col s12 l10 m10 offset-s0 offset-m1 offset-l1">
                <div class="card-content">
                    <span class="card-title">Install Truck</span>
                <form>
                    <div class="row">
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">airport_shuttle</i>
                                <input type="text" id="tmodel" name="tmodel" class="validate" required="required">
                                <label for="tmodel">Model</label>
                            </div>
                        </div>
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">looks_one</i>
                                <input class="validate" type="text" name="tnumber" id="tnumber" required="required"/>
                                <label for="tnumber">Number</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s6 l2 m2"><p>Insurance:</p></div>
                        <div class="col s6 l3 m4">
                            <div class="switch">
                                <label>
                                    No
                                    <input id="insureCheck" name="insurance" value="1" type="checkbox">
                                    <span class="lever"></span>
                                    Yes
                                </label>
                            </div>
                        </div>
                        <div class="col s12 l7 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">security</i>
                                <input type="text" class="validate" id="insurance" name="insuranceCompany" disabled="disabled">
                                <label for="insurance">Insurance Company</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">shopping_cart</i>
                                <input class="validate" type="text" id="owner" name="ownerName" required>
                                <label for="owner">Owner</label>
                            </div>
                        </div>
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">phone</i>
                                <input class="validate" type="tel" id="mobile" name="OwnerTel" required>
                                <label for="tel">Mobile</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m6 l6">
                           <label>Route from:</label>
                           <select name="from" required>
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
                           <select name="to" required>
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
                            <button type="submit" name="install" value="install" class="btn waves-light waves-effect">Install
                                <i class="material-icons right">save</i>
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <%
                            if(request.getParameter("install")!=null){
                                String tmodel = request.getParameter("tmodel");
                                String tnumber = request.getParameter("tnumber");
                                String insurance = request.getParameter("insurance");
                                String insuranceCompany = request.getParameter("insuranceCompany");
                                String ownerName = request.getParameter("ownerName");
                                String ownerTel = request.getParameter("ownerTel");
                                String from = request.getParameter("from");
                                String to = request.getParameter("to");
                                boolean flag = bn.installTruck(tmodel, tnumber, insurance, insuranceCompany, ownerName, ownerTel, from, to);
                                if(flag==true) out.print("<span class=\"green-text text-darken-2\">Truck Installed Successfully.</span>");
                                    else out.print("<span class=\"red-text text-darken-4\">Error!!! Truck can't be installed.</span>");
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
