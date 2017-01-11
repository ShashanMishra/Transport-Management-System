<%-- 
    Document   : navBar
    Created on : Jul 6, 2016, 1:07:04 PM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>

 <div class="navbar-fixed">
    <nav>
      <div class="nav-wrapper">
          <a href="#!" class="brand-logo"><span></span>&nbsp;&nbsp;<img src="img/apple-icon-60x60.png"/></a>
        <a href="#" data-activates="mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="index.jsp"><i class="material-icons left">home</i>Home</a></li>
            <li><a href="findTruck.jsp"><i class="material-icons left">directions_bus</i>Trucks</a></li>
            <%-- <li><a href="showTruck.jsp"><i class="material-icons left">info</i>Status</a></li> --%>
          <li><a href="routes.jsp"><i class="material-icons left">directions</i>Routes</a></li>
          <li><a href="contact.jsp"><i class="material-icons left">contact_mail</i>Contact</a></li>
          <jsp:include page="welcome.jsp"></jsp:include>
        </ul>
        <ul class="side-nav" id="mobile">
            <li><a href="index.jsp"><i class="material-icons left">home</i>Home</a></li>
            <li><a href="findTruck.jsp"><i class="material-icons left">directions_bus</i>Trucks</a></li>
            <li><a href="showTruck.jsp"><i class="material-icons left">info</i>Status</a></li>
          <li><a href="routes.jsp"><i class="material-icons left">directions</i>Routes</a></li>
          <li><a href="#"><i class="material-icons left">assistant</i>Services</a></li>
          <li><a href="contact.jsp"><i class="material-icons left">contact_mail</i>Contact</a></li>
        <jsp:include page="welcome.jsp"></jsp:include>
        </ul>
      </div>
    </nav>
  </div>