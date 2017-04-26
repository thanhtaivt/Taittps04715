<!doctype html>
<!-- Website template by freewebsitetemplates.com -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>contact - Space Science Website Template</title>
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
					<li class="menu">
						<a href="projects.html">Projects</a>
						<ul class="primary">
							<li>
								<a href="proj1.html">proj 1</a>
							</li>
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
					<li class="selected">
						<a href="contact.html">Contact</a>
					</li>
				</ul>
			</div>
		</div>
            <center><div id="body">
			<div class="header">
				<div class="contact">
					
					  <h1>Your Shopping Cart</h1>
        <c:set var ="shop" value="${sessionScope.SHOP}" />
        <c:if test="${not empty shop}">
            <h3 style="color: #ffffff">
            <table border ="1">
                <thead>
                    <tr>
                        <td>No.</td>
                        <td>Code</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Action</td>
                    </tr>
                </thead>
                <tbody>
                    <form action="ControllerCartBean">
                        <c:set var ="count" value="0"/>
                        <c:forEach var ="rows" items ="${shop}">
                            <c:set var ="count" value ="${count +1}" />
                            <tr>
                                <td>${count}</td>
                                <td>${rows.value.sanpham.code}</td>
                                <td>${rows.value.sanpham.name}</td>
                                <td>${rows.value.sanpham.price}</td>
                                <td>${rows.value.quantity}</td>
                                <td><input type = "checkbox" name="rmv" 
                                           value ="${rows.value.sanpham.code}" /></td>
                            </tr>
                        </c:forEach>
                            <tr>
                                <c:url var ="add" value ="ControllerCartBean">
                                    <c:param name="action" value="AddMore" />
                                </c:url>
                                <td colspan ="2"> 
                                    <a href="index.jsp"> Add more </a> 
                                </td>
                                <td> 
                                    <input type ="submit" value="Remove" name= "action"/> 
                                </td>
                            </tr>
                </form>
                </tbody>
        </c:if>
		
            </div></h3></center>
</body>
</html>