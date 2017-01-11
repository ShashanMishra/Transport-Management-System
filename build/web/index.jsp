<%-- 
    Document   : index
    Created on : Jul 6, 2016, 12:44:55 PM
    Author     : Abhishek Verma <mohit00fbd@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html>
    <head>
        <jsp:include page="headContent.jsp"></jsp:include>
        <title>Transport Management System</title>
    </head>

    <body>
    <jsp:include page="navBar.jsp"></jsp:include>
    <div class="parallax-container">
        <div class="parallax"><img src="img/1.jpg"></div>
  </div>
  <div class="section white">
    <div class="container">
        <div class="row center">
            <h3>What We Do?</h3>
        </div>
        <div class="row">
            <div class="col s4">
              <div class="center promo promo-example">
                <i class="material-icons large">flash_on</i>
                <p class="promo-caption">Speeds up delivery</p>
                <p class="light center">We did most of the heavy lifting for you
                    to provide all round hassle free transportation 
                    that incorporate our versatile components.</p>
              </div>
            </div>
            <div class="col s4">
              <div class="center promo promo-example">
                <i class="material-icons large">group</i>
                <p class="promo-caption">User Experience Focused</p>
                <p class="light center">By utilizing elements and principles of 
                    Material Design, we were able to create a Transport Management
                    System that focuses on User Experience.</p>
              </div>
            </div>
            <div class="col s4">
              <div class="center promo promo-example">
                <i class="material-icons large">settings</i>
                <p class="promo-caption">Easy to work with</p>
                <p class="light center">We have provided detailed documentation 
                    as well as specific examples to help new users get started.</p>
              </div>
            </div>
          </div>
    </div>
  </div>
    <div class="parallax-container">
    <div class="parallax"><img src="img/10.jpg"></div>
  </div>
    <div class="section white">
        <div class="container">
            <div class="row">
                <h4 class="center">Services</h4>
                <div class="col s4">
                    <ul><div class="row">
                        <li><a href="contact.jsp"><i class="material-icons left">contacts</i>Contact Administrators</a></li>
                        </div>
                        <div class="row">
                        <li><a href="findTruck.jsp"><i class="material-icons left">search</i>Search Vehicles</a></li>
                        </div><div class="row">
                        <li><a href="routes.jsp"><i class="material-icons left">directions_bus</i>Routes</a></li>
                        </div>
                    </ul>
                </div>
                <div class="col s4">
                    <ul><div class="row">
                        <li><a href="createManager.jsp"><i class="material-icons left">group_add</i>Recruit Managers</a></li>
                        </div><div class="row">
                        <li><a href="login.jsp"><i class="material-icons left">security</i>Security</a></li>
                        </div><div class="row">
                        <li><a href="showTruck.jsp"><i class="material-icons left">list</i>List All Vehicles</a></li>
                        </div>
                    </ul>
                </div>
                <div class="col s4">
                    <ul><div class="row">
                        <li><a href="findManager.jsp"><i class="material-icons left">search</i>Search Managers</a></li>
                        </div><div class="row">
                        <li><a href="newTruck.jsp"><i class="material-icons left">add</i>Add New Vehicles</a></li>
                        </div><div class="row">
                        <li><a href="#!"><i class="material-icons left">more</i>And Much More</a></li>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
    </div>
  <div class="parallax-container">
    <div class="parallax"><img src="img/5.jpg"></div>
  </div>
    <div class="section white">
        <div class="container">
            <div class="row">
                <h4 class="center">Keeping Your Trust Is Our Responsibility.</h4>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
  </html>