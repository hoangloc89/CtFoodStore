<%-- 
    Document   : product-detail
    Created on : Sep 9, 2020, 9:35:35 AM
    Author     : DIENMAYXANH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CT Food Web Store | a Ecommerce Online Shopping</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <!-- //for-mobile-apps -->
        <jsp:include page="include/css-page.jsp"/>
        <!-- //for-mobile-apps -->
        <script src='<c:url value="/resources/js/okzoom.js"/>'></script>
        <script>
            $(function () {
                $('#example').okzoom({
                    width: 150,
                    height: 150,
                    border: "1px solid black",
                    shadow: "0 0 5px #000"
                });
            });
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
                    <li>Product Detail</li>
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
                            <c:forEach items="${categories}" var="category">
                                <li><a href="products.html" style="text-transform: uppercase">${category.name}</a></li>  
                                </c:forEach>	
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
            <div class="w3l_banner_nav_right">
                <div class="w3l_banner_nav_right_banner3">
                    <h3>Product Detail Page<span class="blink_me"></span></h3>
                </div>
                <div class="agileinfo_single">
                    <h5>${product.name}</h5>
                    <div class="col-md-4 agileinfo_single_left">
                        <img id="example" src="<c:url value="/resources/images/products/${product.id}h1.jpg"/>" alt=" " class="img-responsive" />
                    </div>
                    <div class="col-md-8 agileinfo_single_right">
                        <div class="rating1">
                            <span class="starRating">
                                <input id="rating5" type="radio" name="rating" value="5">
                                <label for="rating5">5</label>
                                <input id="rating4" type="radio" name="rating" value="4">
                                <label for="rating4">4</label>
                                <input id="rating3" type="radio" name="rating" value="3" checked>
                                <label for="rating3">3</label>
                                <input id="rating2" type="radio" name="rating" value="2">
                                <label for="rating2">2</label>
                                <input id="rating1" type="radio" name="rating" value="1">
                                <label for="rating1">1</label>
                            </span>
                        </div>
                        <div class="w3agile_description">
                            <h4>Description :</h4>
                            <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui 
                                officia deserunt mollit anim id est laborum.Duis aute irure dolor in 
                                reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
                                pariatur.</p>
                        </div>
                        <div class="snipcart-item block">
                            <div class="snipcart-thumb agileinfo_single_right_snipcart">
                                <h4>${product.priceFormated} <span>50000 VNĐ</span></h4>
                            </div>
                            <div class="snipcart-details agileinfo_single_right_details">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" />
                                        <input type="hidden" name="business" value=" " />
                                        <input type="hidden" name="item_name" value="${product.name}" />
                                        <input type="hidden" name="amount" value="${product.price}" />
                                        <input type="hidden" name="discount_amount" value="5000" />
                                        <input type="hidden" name="currency_code" value="VND" />
                                        <input type="hidden" name="return" value=" " />
                                        <input type="hidden" name="cancel_return" value=" " />
                                        <input type="submit" name="submit" value="Add to cart" class="button" />
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //banner -->
        <!-- brands -->
        <div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_popular">
            <div class="container">
                <div class="w3ls_w3l_banner_nav_right_grid1">
                    <h3 style="color: #398439">Sản phẩm liên quan</h3>
                    <hr>
                    <c:forEach items="${productsRelated}" var="related">
                        <div class="col-md-3 w3ls_w3l_banner_left">
                            <div class="hover14 column">
                                <div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
                                    <div class="agile_top_brand_left_grid_pos">
                                        <img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="agile_top_brand_left_grid1">  
                                        <figure>
                                            <div class="snipcart-item block">
                                                <div class="snipcart-thumb">
                                                    <a href="<c:url value="/product-detail/${related.id}"/>">
                                                        <img src="<c:url value="/resources/images/products/${related.id}h1.jpg"/>" alt=" " class="img-responsive" /></a>
                                                    <p>${related.name}</p>
                                                    <h4>${related.priceFormated} <span>50000 VNĐ</span></h4>
                                                </div>
                                                <div class="snipcart-details">
                                                    <form action="#" method="post">
                                                        <fieldset>
                                                            <input type="hidden" name="cmd" value="_cart" />
                                                            <input type="hidden" name="add" value="1" />
                                                            <input type="hidden" name="business" value=" " />
                                                            <input type="hidden" name="item_name" value="${related.name}" />
                                                            <input type="hidden" name="amount" value="${related.price}" />
                                                            <input type="hidden" name="discount_amount" value="5000" />
                                                            <input type="hidden" name="currency_code" value="VND" />
                                                            <input type="hidden" name="return" value=" " />
                                                            <input type="hidden" name="cancel_return" value=" " />
                                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                                        </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>                 
                    </c:forEach>

                    <div class="clearfix"> </div>
                    
                </div>
<!--    Dành cho sản phẩm khuyến mãi sau này            -->

                <div class="w3ls_w3l_banner_nav_right_grid1">
                    <h3 style="color: #398439">Sản phẩm khuyến mãi</h3>
                    <hr>
                    <c:forEach items="${productsRelated}" var="related">
                        <div class="col-md-3 w3ls_w3l_banner_left">
                            <div class="hover14 column">
                                <div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
                                    <div class="agile_top_brand_left_grid_pos">
                                        <img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="agile_top_brand_left_grid1">  
                                        <figure>
                                            <div class="snipcart-item block">
                                                <div class="snipcart-thumb">
                                                    <a href="<c:url value="/product-detail/${related.id}"/>">
                                                        <img src="<c:url value="/resources/images/products/${related.id}h1.jpg"/>" alt=" " class="img-responsive" /></a>
                                                    <p>${related.name}</p>
                                                    <h4>${related.priceFormated} <span>50000 VNĐ</span></h4>
                                                </div>
                                                <div class="snipcart-details">
                                                    <form action="#" method="post">
                                                        <fieldset>
                                                            <input type="hidden" name="cmd" value="_cart" />
                                                            <input type="hidden" name="add" value="1" />
                                                            <input type="hidden" name="business" value=" " />
                                                            <input type="hidden" name="item_name" value="${related.name}" />
                                                            <input type="hidden" name="amount" value="${related.price}" />
                                                            <input type="hidden" name="discount_amount" value="5000" />
                                                            <input type="hidden" name="currency_code" value="VND" />
                                                            <input type="hidden" name="return" value=" " />
                                                            <input type="hidden" name="cancel_return" value=" " />
                                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                                        </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>                 
                    </c:forEach>

                    <div class="clearfix"> </div>
                    
                </div>    
            </div>
        </div>
        <!-- //brands -->
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
        <!-- Bootstrap Core JavaScript -->
        <jsp:include page="include/js-page.jsp"/>
    </body>
</html>
