<%-- 
    Document   : contact
    Created on : Jul 10, 2016, 1:57:39 PM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <jsp:include page="headContent.jsp"></jsp:include>
    </head>
    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
    <div class="row">
            <div class="card col s12 l10 m10 offset-s0 offset-m1 offset-l1">
                <div class="card-content">
                    <span class="card-title">Contact Us</span>
                    <form method="post">
                    <div class="row">
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">perm_identity</i>
                                <input type="text" id="name" name="name" class="validate" required="required">
                                <label for="name">Name</label>
                            </div>
                        </div>
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">email</i>
                                <input class="validate" type="email" name="email" id="email" required="required"/>
                                <label for="email">E-mail</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">phone</i>
                                <input type="tel" id="phone" name="phone" >
                                <label for="phone">Phone</label>
                            </div>
                        </div>
                        <div class="col s12 l6 m6">
                            <div class="input-field">
                                <i class="material-icons prefix">web</i>
                                <input type="url" id="web" name="web">
                                <label for="web">Website</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 l12 m12">
                            <i class="material-icons prefix">message</i>
                            <textarea class="materialize-textarea" id="message" name="message" length="5000" ></textarea>
                            <label for="message">Message</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6 l6 m6">
                            <button type="submit" name="send" value="send" class="btn waves-light waves-effect">Send
                                <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </div>
                    <div class="row">
                    <jsp:useBean id="bn" class="db.Database"></jsp:useBean>
                    <% 
                        String name = request.getParameter("name");
                        String email = request.getParameter("email");
                        String phone = request.getParameter("phone");
                        String web = request.getParameter("web");
                        String message = request.getParameter("message");
                        //out.print(message);
                        if(request.getParameter("send")!=null){
                            boolean flag = bn.sendQuery(name, email, phone, web, message);
                            if(flag==true) out.print("<span class=\"green-text text-darken-1\">Query Sent Succesfully</span>");
                            else out.print("<span class=\"red-text text-darken-3\">Can't Send Query</span>");
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
