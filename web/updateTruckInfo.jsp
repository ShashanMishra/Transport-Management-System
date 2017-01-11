    <%-- 
        Document   : updateTruckInfo
        Created on : Jul 15, 2016, 8:21:12 AM
        Author     : Abhishek Verma <mohit00fbd@gmail.com>
    --%>

    <%@page contentType="text/html" import="java.util.ArrayList" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <%  if(session.getAttribute("user")==null) response.sendRedirect("login.jsp");
            else if (request.getParameter("tnum")==null) response.sendRedirect("findTruck.jsp");
            %>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Update Truck Info</title>
            <jsp:include page="headContent.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="navBar.jsp"></jsp:include>
        <% 
        if(request.getParameter("tnum")!=null){
            %>
            <div class="container">
                <div class="row">
                    <div class="card col s12 l10 m10 offset-s0 offset-m1 offset-l1">
                        
                        <div class="card-content">
                            <span class="card-title">Update Info</span>
                        <form>
                            <h5>Truck Number <%=request.getParameter("tnum")%></h5>
                            <br>
                            <input type="text" name="tnum" value="<%=request.getParameter("tnum")%>" hidden>
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
                            <div class="col s12 m6 l6">
                               <label>Status</label>
                               <select name="status" required>
                                    <option value="" disabled selected>Status</option>
                                        <%
                                            ArrayList<ArrayList<String>> s = bn.getStatus();
                                            for(int i=0;i<s.size();i++){
                                                out.println("<option value=\""+s.get(i).get(0)+"\">"+s.get(i).get(1)+"</option>");
                                            }
                                            %>
                                </select>
                            </div>
                                <div class="input-field col s6 l3 m3 offset-l3 offset-m3">
                                <button type="submit" name="update" value="update" class="btn waves-light waves-effect">Update
                                    <i class="material-icons right">update</i>
                                </button>
                            </div>
                                </div>
                        <div class="row">
                            <%  if(request.getParameter("update")!=null){
                                    String insurance = request.getParameter("insurance");
                                    String insuranceCompany = request.getParameter("insuranceCompany");
                                    String ownerName = request.getParameter("ownerName");
                                    String ownerTel = request.getParameter("ownerTel");
                                    String from = request.getParameter("from");
                                    String to = request.getParameter("to");
                                    String num = request.getParameter("tnum");
                                    String status =request.getParameter("status");
                                    boolean flag = bn.updateTruckInfo(num, insurance, insuranceCompany, ownerName, ownerTel, from, to,status);
                                    if(flag==true) out.print("<span class=\"green-text text-darken-2\">Truck Info Updated Successfully.</span>");
                                    else out.print("<span class=\"red-text text-darken-4\">Error!!! Truck Info can't be updated.</span>");
                            }%>
                        </div>
                    </form>
                        </div>
                    </div>
                </div>
            </div>

            <%
        }
        %>
        <jsp:include page="footer.jsp"></jsp:include>
        </body>
    </html>
