<!doctype html>
<!-- Website template by freewebsitetemplates.com -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>projects - Space Science Website Template</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/mobile.css">
        <script src="js/mobile.js" type="text/javascript"></script>
    </head>
    
    <body>
        <div id="page">
            <div id="header">
                <div>
                    <a href="index.html" class="logo"><img src="images/logo.png" alt=""></a>
                    <ul id="navigation">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li class="menu selected">
                            <a href="projects.html">Projects</a>
                            <ul class="primary">
                                
                            </ul>
                        </li>
                        <li class="menu">
                            <a href="blog.html">Blog</a>
                            <ul class="secondary">
                                <li>
                                    <a href="singlepost.html">Single post</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="contact.html">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="body">
                <div class="header">
                    <div>
                        <h1>Projects</h1>
                        
                        <ul>
                            <c:forEach items="${listSP}" var="rows">
                            <li>
                                <a href="proj1.html"><img src="${rows.image}" alt=""></a>
                                <div>
                                    <h1>${rows.name}</h1>
                                    <h1>Code: ${rows.code} </h1>
                                    <h1>Price ${rows.price} </h1>
                                    <a href="ControllerProducts?action=Delete&txtCode=${rows.code}" class="more">Delete</a>
                                    <a href="newProduct.jsp" class="more">New</a>
                                    <a href="ControllerProducts?action=Edit&txtCode=${rows.code}
                                       s&txtName=${rows.name}&txtImage=${rows.image}&txtPrice=${rows.price}" class="more">Edit</a>
                                </div>
                            </li>
                            </c:forEach>


                        </ul>
                    </div>
                </div>
            </div>
            <div id="footer">
                <div class="connect">
                    <div>
                        <h1>FOLLOW OUR  MISSIONS ON</h1>
                        <div>
                            <a href="http://freewebsitetemplates.com/go/facebook/" class="facebook">facebook</a>
                            <a href="http://freewebsitetemplates.com/go/twitter/" class="twitter">twitter</a>
                            <a href="http://freewebsitetemplates.com/go/googleplus/" class="googleplus">googleplus</a>
                            <a href="http://pinterest.com/fwtemplates/" class="pinterest">pinterest</a>
                        </div>
                    </div>
                </div>
                <div class="footnote">
                    <div>
                        <p>&copy; 2023 BY SPACE PROSPECTION | ALL RIGHTS RESERVED</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>