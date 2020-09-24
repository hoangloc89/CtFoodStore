<%-- 
    Document   : home-template
    Created on : Jul 31, 2020, 9:20:07 AM
    Author     : HOANGLOC
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
author: Hoang Loc
project : Introduce products home page
-->
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
    </head>	
    <body>
        <!-- header -->
        <jsp:include page="include/header.jsp"/>
        <!-- //header -->

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
                    <h3>Best Deals For New Products<span class="blink_me"></span></h3>
                </div>
                <div class="w3l_banner_nav_right_banner3_btm">
                    <div class="col-md-4 w3l_banner_nav_right_banner3_btml">
                        <div class="view view-tenth">
                            <img src="<c:url value="/resources/images/spaghetty-banner.jpg"/>" alt=" " class="img-responsive" />
                            <div class="mask">
                                <h4>Cát Tường Phát</h4>
                                <p>Chúng tôi tự hào là đơn vị cung cấp thực phẩm nhập khẩu uy tín, chất lượng. Cám ơn sự lựa chọn của bạn.</p>
                            </div>
                        </div>
                        <h4>Mỳ Spaghetty</h4>
                        <ol>
                            <li>sunt in culpa qui officia</li>
                            <li>commodo consequat</li>
                            <li>sed do eiusmod tempor incididunt</li>
                        </ol>
                    </div>
                    <div class="col-md-4 w3l_banner_nav_right_banner3_btml">
                        <div class="view view-tenth">
                            <img src="<c:url value="/resources/images/thuc-pham-thai-lan.jpg"/>" alt=" " class="img-responsive" />
                            <div class="mask">
                                <h4>Cát Tường Phát</h4>
                                <p>Chúng tôi tự hào là đơn vị cung cấp thực phẩm nhập khẩu uy tín, chất lượng. Cám ơn sự lựa chọn của bạn.</p>
                            </div>
                        </div>
                        <h4>Thực phẩm từ Thái Lan</h4>
                        <ol>
                            <li>enim ipsam voluptatem officia</li>
                            <li>tempora incidunt ut labore et</li>
                            <li>vel eum iure reprehenderit</li>
                        </ol>
                    </div>
                    <div class="col-md-4 w3l_banner_nav_right_banner3_btml">
                        <div class="view view-tenth">
                            <img src="<c:url value="/resources/images/mang-boc-thuc-pham.jpg"/>" alt=" " class="img-responsive" />
                            <div class="mask">
                                <h4>Cát Tường Phát</h4>
                                <p>Chúng tôi tự hào là đơn vị cung cấp thực phẩm nhập khẩu uy tín, chất lượng. Cám ơn sự lựa chọn của bạn.</p>
                            </div>
                        </div>
                        <h4>Bảo quản và chế biến thực phẩm</h4>
                        <ol>
                            <li>dolorem eum fugiat voluptas</li>
                            <li>ut aliquid ex ea commodi</li>
                            <li>magnam aliquam quaerat</li>
                        </ol>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="w3ls_w3l_banner_nav_right_grid">
                    <h3>Sản Phẩm Phổ Biến</h3>
                    <!--                    brand 1-->
                    <div class="w3ls_w3l_banner_nav_right_grid1">
                        <h6>thực phẩm đóng lon</h6>
                        <c:forEach var="canned" items="${canneds}">
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
                                                        <a href="<c:url value="/product-detail/${canned.id}"/>">
                                                            <img src="<c:url value="/resources/images/products/${canned.id}h1.jpg"/>" alt=" " class="img-responsive" /></a>
                                                        <p>${canned.name}</p>
                                                        <h4>${canned.priceFormated}<span>50000 VNĐ</span></h4>
                                                    </div>
                                                    <div class="snipcart-details">
                                                        <form action="#" method="post">
                                                            <fieldset>
                                                                <input type="hidden" name="cmd" value="_cart" />
                                                                <input type="hidden" name="add" value="1" />
                                                                <input type="hidden" name="business" value=" " />
                                                                <input type="hidden" name="item_name" value="${canned.name}" />
                                                                <input type="hidden" name="amount" value="${canned.price}" />
                                                                <input type="hidden" name="discount_amount" value="10000" />
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

                        <!--// end brand 1-->
                    </div>

                    <!--start brand 2-->
                    <div class="w3ls_w3l_banner_nav_right_grid1">
                        <h6>Mỳ Spaghetty các loại</h6>

                        <c:forEach items="${spaghetties}" var="spaghetty">
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
                                                        <a href="<c:url value="/product-detail/${spaghetty.id}"/>"><img 
                                                                src="<c:url value="/resources/images/products/${spaghetty.id}h1.jpg"/>" alt=" " class="img-responsive" /></a>
                                                        <p>${spaghetty.name}</p>
                                                        <h4>${spaghetty.priceFormated} <span>50000 VNĐ</span></h4>
                                                    </div>
                                                    <div class="snipcart-details">
                                                        <form action="#" method="post">
                                                            <fieldset>
                                                                <input type="hidden" name="cmd" value="_cart" />
                                                                <input type="hidden" name="add" value="1" />
                                                                <input type="hidden" name="business" value=" " />
                                                                <input type="hidden" name="item_name" value="${spaghetty.name}" />
                                                                <input type="hidden" name="amount" value="${spaghetty.price}" />
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
                        <!--// end brand 2-->    
                    </div>
                    <!--                    start brand 3-->

                    <div class="w3ls_w3l_banner_nav_right_grid1">
                        <h6>Dầu và các sản phẩm từ olive</h6>
                        <c:forEach items="${oils}" var="oil">
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
                                                        <a href="<c:url value="/product-detail/${oil.id}"/>">
                                                            <img src="<c:url value="/resources/images/products/${oil.id}h1.jpg"/>" alt=" " class="img-responsive" /></a>
                                                        <p>${oil.name}</p>
                                                        <h4>${oil.priceFormated} <span>50000 VNĐ</span></h4>
                                                    </div>
                                                    <div class="snipcart-details">
                                                        <form action="#" method="post">
                                                            <fieldset>
                                                                <input type="hidden" name="cmd" value="_cart" />
                                                                <input type="hidden" name="add" value="1" />
                                                                <input type="hidden" name="business" value=" " />
                                                                <input type="hidden" name="item_name" value="${oil.name}" />
                                                                <input type="hidden" name="amount" value="${oil.price}" />
                                                                <input type="hidden" name="discount_amount" value="8000" />
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
                    <!--// end brand 3-->

                </div>
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
        <!-- js page-->
        <jsp:include page="include/js-page.jsp"/>
    </body>
</html>
