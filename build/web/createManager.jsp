<%-- 
    Document   : createManager
    Created on : Jul 7, 2016, 10:24:38 AM
    Author     : Abhishek <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" import="java.util.ArrayList" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    if(session.getAttribute("user")==null||(!session.getAttribute("user").toString().equals("admin"))){
        response.sendRedirect("login.jsp");
    }
%>
<html>
    <head>
        <title>Create Manager</title>
        <jsp:include page="headContent.jsp"></jsp:include>
    </head>
    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
        <div class="row">
            <div class="card col s12 l10 m10 offset-s0 offset-m1 offset-l1">
                <div class="card-content">
                    <span class="card-title">Create New Manager</span>
                <form>
                    <div class="row">
                        <div class="col s12 l6 m6">
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
                    </div>
                    <div class="row">
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">perm_identity</i>
                                <input type="text" id="name" name="name" class="validate" required="required">
                                <label for="uname">Name</label>
                            </div>
                        </div>
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">account_circle</i>
                                <input type="text" id="uname" name="uname" class="validate" required="required">
                                <label for="uname">Username</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">vpn_key</i>
                                <input class="validate" type="password" name="passwd" id="passwd" required="required"/>
                                <label for="passwd">Password</label>
                            </div>
                        </div>
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">child_care</i>
                                <input class="datepicker" type="date" name="dob" id="dob" name="date" required>
                                <label for="dob">Date Of Birth</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">date_range</i>
                                <input class="datepicker" type="date" name="doj" id="doj" name="doj" required>
                                <label for="doj">Date Of Joining</label>
                            </div>
                        </div>
                        <div class="input-field col s12 l6 m6">
                            <i class="material-icons prefix">attach_money</i>
                            <input type="number" name="salary" id="salary">
                            <label for="salary">Salary</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6 l6 m6">
                            <button type="submit" name="create" value="create" class="btn waves-light waves-effect">Create
                                <i class="material-icons right">create</i>
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <%
                            String branch = request.getParameter("branch");
                            String name = request.getParameter("name");
                            String uname = request.getParameter("uname");
                            String passwd = request.getParameter("passwd");
                            String dob = request.getParameter("dob");
                            String doj = request.getParameter("doj");
                            String salary = request.getParameter("salary");
                            if(request.getParameter("create")!=null){
                                if(branch==null){
                                    out.print("<span class=\"blue-text text-darken-2\">Please Select Branch</span>");
                                }
                                else{
                                    boolean flag = bn.createManager(branch,name,uname,passwd,dob,doj,salary);
                                    if(flag==true) out.print("<span class=\"green-text text-darken-2\">Manager Created Successfully.</span>");
                                    else out.print("<span class=\"red-text text-darken-4\">Error! Manager Can't Be Created.</span>");
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
