<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>旧物-我的订单</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/chosen.min.css">
    <link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.min.css">
    <link rel="stylesheet" href="assets/css/lightbox.min.css">
    <link rel="stylesheet" href="assets/js/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
    <link rel="stylesheet" href="assets/css/mobile-menu.css">
    <link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="inblog-page">
    <!-- ------------------header(website)------------- -->
    <header class="header style7">
        <div class="top-bar">
            <div class="container">
                <div class="top-bar-left">
                    <div class="header-message">Welcome to our online store!</div>
                </div>
                <div class="top-bar-right">
                    <div class="header-language">
                        <div class="emeriss-language emeriss-dropdown">
                            <a href="#" class="active language-toggle" data-emeriss="emeriss-dropdown"> <span> English (USD)
							</span>
                            </a>
                            <ul class="emeriss-submenu">
                                <li class="switcher-option">
                                    <a href="#"> <span>
											French (EUR) </span>
                                    </a>
                                </li>
                                <li class="switcher-option">
                                    <a href="#"> <span>
											Japanese (JPY) </span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <ul class="header-user-links">
                        <li><a href="<%=basePath%>user/login.jsp">Login or
								Register</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="main-header">
                <div class="row">
                    <div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
                        <div class="logo">
                            <a href="index.jsp"> <img
								src="<%=basePath%>user/assets/images/logo.png" alt="img">
							</a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
                        <div class="block-search-block">
                            <form class="form-search form-search-width-category">
                                <div class="form-content">
                                    <div class="inner">
                                        <input type="text" class="input" name="s" value="" placeholder="搜索">
                                    </div>
                                    <button class="btn-search" type="submit">
										<span class="icon-search"></span>
									</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
                        <div class="header-control">
                            <div class="block-minicart emeriss-mini-cart block-header emeriss-dropdown">
                                <a href="javascript:void(0);" class="shopcart-icon" data-emeriss="emeriss-dropdown"> Cart <span class="count">
										0 </span>
								</a>
                                <div class="shopcart-description emeriss-submenu">
                                    <div class="content-wrap">
                                        <h3 class="title">Shopping Cart</h3>
                                        <ul class="minicart-items">
                                            <li class="product-cart mini_cart_item"><a href="#" class="product-media"> <img
													src="<%=basePath%>user/assets/images/item-minicart-1.jpg"
													alt="img">
											</a>
                                                <div class="product-details">
                                                    <h5 class="product-name">
                                                        <a href="#">Wheel With Inserts</a>
                                                    </h5>
                                                    <div class="variations">
                                                        <span class="attribute_color"> <a href="#">Black</a>
														</span> , <span class="attribute_size"> <a href="#">300ml</a>
														</span>
                                                    </div>
                                                    <span class="product-price"> <span class="price">
															<span>$45</span>
                                                    </span>
                                                    </span> <span class="product-quantity"> (x1) </span>
                                                    <div class="product-remove">
                                                        <a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </li>

                                        </ul>
                                        <div class="subtotal">
                                            <span class="total-title">Subtotal: </span> <span class="total-price"> <span class="Price-amount">
													$135 </span>
                                            </span>
                                        </div>
                                        <div class="actions">
                                            <a class="button button-viewcart" href="<%=basePath%>user/shoppingcart.jsp"> <span>View
													Bag</span>
                                            </a>
                                            <a href="<%=basePath%>user/checkout.jsp" class="button button-checkout"> <span>Checkout</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <c:choose>
                                <c:when test="${empty sessionScope.sessionUser }">
                                    <div class="block-account block-header emeriss-dropdown">
                                        <a href="javascript:void(0);" data-emeriss="emeriss-dropdown">
                                            <span class="flaticon-user"></span>
                                        </a>
                                        <div class="header-account emeriss-submenu">
                                            <div class="header-user-form-tabs">
                                                <ul class="tab-link">
                                                    <li class="active">
                                                        <a data-toggle="tab" aria-expanded="true" href="#header-tab-login">登录</a>
                                                    </li>
                                                    <li>
                                                        <a data-toggle="tab" aria-expanded="true" href="#header-tab-rigister">注册</a>
                                                    </li>
                                                </ul>

                                                <!-- ----------登录/注册----------- -->
                                                <div class="tab-container">
                                                    <!-- 登录 -->
                                                    <div id="header-tab-login" class="tab-panel active">
                                                        <form method="post" action="#" class="login form-login">
                                                            <p class="form-row form-row-wide">
                                                                <input type="email" " placeholder="Email " class="input-text ">
                                                    </p>
                                                    <p class="form-row form-row-wide ">
                                                        <input type="password " class="input-text " placeholder="password ">
                                                    </p>
                                                    <p class="form-row ">
                                                        <label class="form-checkbox ">
                                                        <input type="checkbox " class="input-checkbox ">
                                                        <span>
                                                                   	记住我
                                                        </span>
                                                    </label>
                                                        <input type="submit " class="button " value="登录 ">
                                                    </p>
                                                    <p class="lost_password ">
                                                        <a href="# ">忘记密码</a>
                                                    </p>
                                                </form>
                                            </div>
                                            <!-- 注册 -->
                                            <div id="header-tab-rigister " class="tab-panel ">
                                                <form method="post " action="# " class="register form-register ">
                                                    <p class="form-row form-row-wide ">
                                                        <input type="email " placeholder="Email " class="input-text ">
                                                    </p>
                                                    <p class="form-row form-row-wide ">
                                                        <input type="password " class="input-text " placeholder="Password ">
                                                    </p>
                                                    <p class="form-row ">
                                                        <input type="submit " class="button " value="注册 ">
                                                    </p>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

							</c:when>
							<c:otherwise>
								      ${sessionScope.sessionUser.loginname }&nbsp;&nbsp;|&nbsp;&nbsp;
								  
								  <a href="<c:url value='/UserServlet?method=quit' />" target="_parent">退出</a>
                                                                </c:otherwise>
                            </c:choose>



                            <a class="menu-bar mobile-navigation menu-toggle " href="# ">
                                <span></span> <span></span> <span></span>
                            </a>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>

    </header>
    <!---------------------------------------------------->
    <!-- ------------------header(mobile)----------------->
    <div class="header-device-mobile ">
        <div class="wapper ">
            <div class="item mobile-logo ">
                <div class="logo ">
                    <a href="# ">
						<img src="<%=basePath%>user/assets/images/logo.png " alt="img ">
					</a>
                </div>
            </div>
            <div class="item item mobile-search-box has-sub ">
                <a href="# ">
                    <span class="icon ">
							<i class="fa fa-search " aria-hidden="true "></i>
						</span>
                </a>
                <div class="block-sub ">
                    <a href="# " class="close ">
                        <i class="fa fa-times " aria-hidden="true "></i>
                    </a>
                    <div class="header-searchform-box ">
                        <form class="header-searchform ">
                            <div class="searchform-wrap ">
                                <input type="text " class="search-input " placeholder="Enter keywords to search... ">
                                <input type="submit " class="submit button " value="Search ">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="item mobile-settings-box has-sub ">
                <a href="# ">
                    <span class="icon ">
							<i class="fa fa-cog " aria-hidden="true "></i>
						</span>
                </a>
                <div class="block-sub ">
                    <a href="# " class="close ">
                        <i class="fa fa-times " aria-hidden="true "></i>
                    </a>
                    <div class="block-sub-item ">
                        <h5 class="block-item-title ">Currency</h5>
                        <form class="currency-form emeriss-language ">
                            <ul class="emeriss-language-wrap ">
                                <li class="active ">
                                    <a href="# ">
                                        <span>
												English (USD)
											</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="# ">
                                        <span>
												French (EUR)
											</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="# ">
                                        <span>
												Japanese (JPY)
											</span>
                                    </a>
                                </li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>
            <div class="item menu-bar ">
                <a class=" mobile-navigation menu-toggle " href="# ">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
        </div>
    </div>
    <!-- ---------------------------------------------- -->

    <!-- ------------------contain-------------------- -->
    <div class="site-content">
        <main class="site-main  main-container no-sidebar">
            <div class="container">
                <div class="breadcrumb-trail breadcrumbs">
                    <ul class="trail-items breadcrumb">
                        <li class="trail-item trail-begin">
                            <a href="">
                                <span>
                                        首页
                                    </span>
                            </a>
                        </li>
                        <li class="trail-item trail-end active">
                            <span>
                                    我的订单
                                </span>
                        </li>
                    </ul>
                </div>
                <div class="row">
                    <div class="main-content-cart main-content col-sm-12">
                        <h3 class="custom_blog_title">
                            我的订单
                        </h3>
                        <div class="page-main-content">
                            <div class="shoppingcart-content">
                                <form action="shoppingcart.html" class="cart-form">
                                    <table class="shop_table">
                                        <thead>
                                            <tr>

                                                <th class="product-thumbnail"></th>
                                                <th class="product-name"></th>
                                                <th class="product-price"></th>
                                                <th class="product-status">订单状态</th>
                                                <th class="product-operation">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="cart_item">

                                                <td class="product-thumbnail">
                                                    <a href="#">
                                                        <img src="assets/images/cart-item-2.jpg" alt="img" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image">
                                                    </a>
                                                </td>
                                                <td class="product-name" data-title="Product">
                                                    <a href="#" class="title">Mini swing dress</a>
                                                    <span class="attributes-select attributes-color">Black,</span>
                                                    <span class="attributes-select attributes-size">XXL</span>
                                                </td>
                                                <td class="product-price" data-title="Price">
                                                    <span class="woocommerce-Price-amount amount">
                                                            <span class="woocommerce-Price-currencySymbol">
                                                                $
                                                            </span> 45
                                                    </span>
                                                </td>
                                                <td class="product-status">
                                                    <span></span>
                                                </td>
                                                <td class="product-operation">
                                                    <span>查看订单</span>
                                                    <span>支付</span>
                                                    <span>取消</span>
                                                </td>
                                            </tr>
                                            <tr class="cart_item">

                                                <td class="product-thumbnail">
                                                    <a href="#">
                                                        <img src="assets/images/cart-item-3.jpg" alt="img" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image">
                                                    </a>
                                                </td>
                                                <td class="product-name" data-title="Product">
                                                    <a href="#" class="title">Square neck top</a>
                                                    <span class="attributes-select attributes-color">White,</span>
                                                    <span class="attributes-select attributes-size">M</span>
                                                </td>

                                                <td class="product-price" data-title="Price">
                                                    <span class="woocommerce-Price-amount amount">
                                                            <span class="woocommerce-Price-currencySymbol">
                                                                $
                                                            </span> 45
                                                    </span>
                                                </td>
                                                <td class="product-status">
                                                    <span></span>
                                                </td>
                                                <td class="product-operation">
                                                    <span>查看订单</span>
                                                    <span>支付</span>
                                                    <span>取消</span>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>




    <!-- ---------------------------------------------- -->

    <!--------------------footer(website)-------------  -->
    <footer class="footer style7 ">
        <div class="container ">
            <div class="container-wapper ">
                <div class="row ">
                    <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4 ">
                        <div class="widget-box ">
                            <div class="single-img ">
                                <a href="<%=basePath%>user/index.jsp "><img
									src="<%=basePath%>user/assets/images/logo-light.png "
									alt="img "></a>
                            </div>

                        </div>
                    </div>



                    <div class="emeriss-socials ">
                        <ul class="socials ">
                            <li>
                                <a href="# " class="social-item " target="_blank ">
                                    <i class="icon fa fa-facebook "></i>
                                </a>
                            </li>
                            <li>
                                <a href="# " class="social-item " target="_blank ">
                                    <i class="icon fa fa-twitter "></i>
                                </a>
                            </li>
                            <li>
                                <a href="# " class="social-item " target="_blank ">
                                    <i class="icon fa fa-instagram "></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row ">
                <div class="col-sm-12 border-custom ">
                    <span></span>
                </div>
            </div>
            <div class="footer-end ">
                <div class="row ">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                        <div class="coppyright ">
                            Copyright © 2020 <a href="# ">Emeriss</a> . All rights reserved
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </footer>
    <!---------------------------------------------------->

    <!--------------------footer(mobile)------------------>
    <div class="footer-device-mobile ">
        <div class="wapper ">
            <div class="footer-device-mobile-item device-home ">
                <a href="<%=basePath%>user/index.jsp ">
                    <span class="icon ">
						<i class="fa fa-home " aria-hidden="true "></i>
					</span> Home
                </a>
            </div>
            <div class="footer-device-mobile-item device-home device-wishlist ">
                <a href="# ">
                    <span class="icon ">
						<i class="fa fa-heart " aria-hidden="true "></i>
					</span> Wishlist
                </a>
            </div>
            <div class="footer-device-mobile-item device-home device-cart ">
                <a href="# ">
                    <span class="icon ">
						<i class="fa fa-shopping-basket " aria-hidden="true "></i>
						<span class="count-icon ">
							0
						</span>
                    </span>
                    <span class="text ">Cart</span>
                </a>
            </div>
            <div class="footer-device-mobile-item device-home device-user ">
                <a href="# ">
                    <span class="icon ">
						<i class="fa fa-user " aria-hidden="true "></i>
					</span> Account
                </a>
            </div>
        </div>
    </div>
    <!---------------------------------------------------->
    <!------------------------upper----------------------->
    <a href="# " class="backtotop ">
        <i class="fa fa-angle-double-up "></i>
    </a>
    <!---------------------------------------------------->
    <!------------------------js----------------------  -->
    <script src="assets/js/jquery-1.12.4.min.js"></script>
    <script src="assets/js/jquery.plugin-countdown.min.js"></script>
    <script src="assets/js/jquery-countdown.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/magnific-popup.min.js"></script>
    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/jquery.scrollbar.min.js"></script>
    <script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/mobile-menu.js"></script>
    <script src="assets/js/chosen.min.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/jquery.elevateZoom.min.js"></script>
    <script src="assets/js/jquery.actual.min.js"></script>
    <script src="assets/js/fancybox/source/jquery.fancybox.js"></script>
    <script src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/owl.thumbs.min.js"></script>
    <script src="assets/js/jquery.scrollbar.min.js"></script>
    <script src="assets/js/frontend-plugin.js"></script>
</body>

</html>