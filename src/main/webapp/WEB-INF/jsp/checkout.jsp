<%-- 
    Document   : checkout
    Created on : Sep 11, 2020, 2:15:19 PM
    Author     : DIENMAYXANH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CT Food Web Store | Check Out Page</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <!-- //for-mobile-apps -->
        <jsp:include page="include/css-page.jsp"/>
        <script src="//cdnjs.cloudflare.com/ajax/libs/minicart/3.0.5/minicart.min.js"></script>
        <script>
        paypal.minicart.render();   
        </script>
    </head>	

    <body>
        <!-- header -->
        <jsp:include page="include/header.jsp"/>
        <!-- //header -->
        <!-- products-breadcrumb -->
        <div class="products-breadcrumb">
            <div class="container">
                <ul>
                    <li><i class="fa fa-home" aria-hidden="true"></i><a href="<c:url value="/home"/>">Home</a><span>|</span></li>
                    <li>Checkout</li>
                </ul>
            </div>
        </div>
        <!-- //products-breadcrumb -->
        <!-- banner -->
        <div class="banner">
            <div class="w3l_banner_nav_left">
                <nav class="navbar nav_bottom">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div> 
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav nav_1">
                            <li><a href="#">Branded Foods</a></li>
                                <c:forEach items="${categories}" var="category">
                                <li><a href="#" style="text-transform: uppercase">${category}</a></li>
                                </c:forEach>        
                        </ul>
                    </div>
                    <!-- navbar-collapse -->
                </nav>
            </div>
            <div class="w3l_banner_nav_right">
                <!-- about -->
                <div class="privacy about">
                    <h3>Chec<span>kout</span></h3>

                    <div class="checkout-right">
                        <h4>Your shopping cart contains: <span>${cartItem.size} Products</span></h4>
                        <table class="timetable_sub">
                            <thead>
                                <tr>
                                    <th>SL No.</th>	
                                    <th>Product</th>
                                    <th>Quality</th>
                                    <th>Product Name</th>

                                    <th>Price</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                <c:forEach items="${cartItem}" var="cart" varStatus="count">
                                    <tr class="rem1">
                                        <td class="invert">${count.index}+1</td>
                                        <td class="invert-image"><a href="<c:url value="/product-detail/${cart.id}"/>">
                                                <img src="<c:url value="/resources/images/products/${cart.id}h1.jpg"/>" alt=" " class="img-responsive"></a></td>
                                        <td class="invert">
                                            <div class="quantity"> 
                                                <div class="quantity-select">                           
                                                    <div class="entry value-minus">&nbsp;</div>
                                                    <div class="entry value"><span>${cart.quantity}</span></div>
                                                    <div class="entry value-plus active">&nbsp;</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="invert">${cart.name}</td>

                                        <td class="invert">${cart.price}</td>
                                        <td class="invert">
                                            <div class="rem">
                                                <div class="close1"> </div>
                                            </div>

                                        </td>
                                    </tr>    
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="checkout-left">	
                        <div class="col-md-4 checkout-left-basket">
                            <h4>Continue to basket</h4>
                            <ul>
                                <li>Product1 <i>-</i> <span>$15.00 </span></li>
                                <li>Product2 <i>-</i> <span>$25.00 </span></li>
                                <li>Product3 <i>-</i> <span>$29.00 </span></li>
                                <li>Total Service Charges <i>-</i> <span>$15.00</span></li>
                                <li>Total <i>-</i> <span>$84.00</span></li>
                            </ul>
                        </div>
                        <div class="col-md-8 address_form_agile">
                            <h4>Add a new Details</h4>
                            <form action="payment.html" method="post" class="creditly-card-form agileinfo_form">
                                <section class="creditly-wrapper wthree, w3_agileits_wrapper">
                                    <div class="information-wrapper">
                                        <div class="first-row form-group">
                                            <div class="controls">
                                                <label class="control-label">Full name: </label>
                                                <input class="billing-address-name form-control" type="text" name="name" placeholder="Full name">
                                            </div>
                                            <div class="w3_agileits_card_number_grids">
                                                <div class="w3_agileits_card_number_grid_left">
                                                    <div class="controls">
                                                        <label class="control-label">Mobile number:</label>
                                                        <input class="form-control" type="text" placeholder="Mobile number">
                                                    </div>
                                                </div>
                                                <div class="w3_agileits_card_number_grid_right">
                                                    <div class="controls">
                                                        <label class="control-label">Landmark: </label>
                                                        <input class="form-control" type="text" placeholder="Landmark">
                                                    </div>
                                                </div>
                                                <div class="clear"> </div>
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Town/City: </label>
                                                <input class="form-control" type="text" placeholder="Town/City">
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Address type: </label>
                                                <select class="form-control option-w3ls">
                                                    <option>Office</option>
                                                    <option>Home</option>
                                                    <option>Commercial</option>

                                                </select>
                                            </div>
                                        </div>
                                        <button class="submit check_out">Delivery to this Address</button>
                                    </div>
                                </section>
                            </form>
                            <div class="checkout-right-basket">
                                <a href="payment.html">Make a Payment <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
                            </div>
                        </div>

                        <div class="clearfix"> </div>

                    </div>

                </div>
                <!-- //about -->
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //banner -->


        <!-- newsletter -->
        <div class="newsletter">
            <div class="container">
                <div class="w3agile_newsletter_left">
                    <h3>sign up for our newsletter</h3>
                </div>
                <div class="w3agile_newsletter_right">
                    <form action="#" method="post">
                        <input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Email';
                                }" required="">
                        <input type="submit" value="subscribe now">
                    </form>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //newsletter -->
        <!-- footer -->
        <jsp:include page="include/footer.jsp"/>
        <!-- //footer -->
        <!-- js -->
        <script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
        <!--quantity-->
        <script>
                            $('.value-plus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                                divUpd.text(newVal);
                            });

                            $('.value-minus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                                if (newVal >= 1)
                                    divUpd.text(newVal);
                            });
        </script>
        <!--quantity-->
        <script>$(document).ready(function (c) {
                $('.close1').on('click', function (c) {
                    $('.rem1').fadeOut('slow', function (c) {
                        $('.rem1').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.close2').on('click', function (c) {
                    $('.rem2').fadeOut('slow', function (c) {
                        $('.rem2').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.close3').on('click', function (c) {
                    $('.rem3').fadeOut('slow', function (c) {
                        $('.rem3').remove();
                    });
                });
            });
        </script>

        <!-- //js -->
        <!-- script-for sticky-nav -->
        <!-- //script-for sticky-nav -->
        <!-- start-smoth-scrolling -->
        <jsp:include page="include/js-page.jsp"/>
        <!-- start-smoth-scrolling -->
        <!-- Bootstrap Core JavaScript -->

    </body>
</html>
