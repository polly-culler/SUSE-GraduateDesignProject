<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">

<head>
    <title>旧物Home</title>
    <meta charset="UTF-8">
    
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>user/assets/images/favicon.png" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/animate.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/slick.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/chosen.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/magnific-popup.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/lightbox.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/js/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/jquery.scrollbar.min.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/mobile-menu.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/fonts/flaticon/flaticon.css">
    <link rel="stylesheet" href="<%=basePath%>user/assets/css/style.css">
</head>

<body class="home">
    <!-------------------- header(website) ---------------->
    <header class="header style7">
        <div class="top-bar">
            <div class="container">
                <div class="top-bar-left">
                    <div class="header-message">
                        Welcome to our online store!
                    </div>
                </div>
                <div class="top-bar-right">
                    <div class="header-language">
                        <div class="emeriss-language emeriss-dropdown">
                            <a href="#" class="active language-toggle" data-emeriss="emeriss-dropdown">
                                <span>
										English (USD)
									</span>
                            </a>
                            <ul class="emeriss-submenu">
                                <li class="switcher-option">
                                    <a href="#">
                                        <span>
												French (EUR)
											</span>
                                    </a>
                                </li>
                                <li class="switcher-option">
                                    <a href="#">
                                        <span>
												Japanese (JPY)
											</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <ul class="header-user-links">
                        <li>
                            <a href="<%=basePath%>user/login.jsp">Login or Register</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="main-header">
                <div class="row">
                    <div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
                        <div class="logo">
                            <a href="<%=basePath%>user/index.jsp">
                                <img src="<%=basePath%>user/assets/images/logo.png" alt="img">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
                        <div class="block-search-block">
                            <form id="form1" class="form-search form-search-width-category" action="<c:url value='/GoodsServlet'/>" method="post">
                                <input type="hidden" name="method" value="findByGname"/>
                                <div class="form-content">
                                    <div class="inner">
                                        <input type="text" class="input" name="gname" value="" placeholder="搜索">
                                    </div>
                                    <a href="javascript:document.getElementById('form1').submit();">
                                    	<button class="btn-search" >
                                    		<span class="icon-search"></span>
                                		</button>
                                	</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
                        <div class="header-control">
                            <div class="block-minicart emeriss-mini-cart block-header emeriss-dropdown">
                                <a href="javascript:void(0);" class="shopcart-icon" data-emeriss="emeriss-dropdown">
                                Cart
                                <span class="count">
										0
										</span>
                            </a>
                                <div class="shopcart-description emeriss-submenu">
                                    <div class="content-wrap">
                                        <h3 class="title">Shopping Cart</h3>
                                        <ul class="minicart-items">
                                            <li class="product-cart mini_cart_item">
                                                <a href="#" class="product-media">
                                                    <img src="<%=basePath%>user/assets/images/item-minicart-1.jpg" alt="img">
                                                </a>
                                                <div class="product-details">
                                                    <h5 class="product-name">
                                                        <a href="#">Wheel With Inserts</a>
                                                    </h5>
                                                    <div class="variations">
                                                        <span class="attribute_color">
																<a href="#">Black</a>
															</span> ,
                                                        <span class="attribute_size">
																<a href="#">300ml</a>
															</span>
                                                    </div>
                                                    <span class="product-price">
															<span class="price">
																<span>$45</span>
                                                    </span>
                                                    </span>
                                                    <span class="product-quantity">
															(x1)
														</span>
                                                    <div class="product-remove">
                                                        <a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="product-cart mini_cart_item">
                                                <a href="#" class="product-media">
                                                    <img src="<%=basePath%>user/assets/images/item-minicart-2.jpg" alt="img">
                                                </a>
                                                <div class="product-details">
                                                    <h5 class="product-name">
                                                        <a href="#">Soap Grooming Solutions</a>
                                                    </h5>
                                                    <div class="variations">
                                                        <span class="attribute_color">
																<a href="#">Black</a>
															</span> ,
                                                        <span class="attribute_size">
																<a href="#">300ml</a>
															</span>
                                                    </div>
                                                    <span class="product-price">
															<span class="price">
																<span>$45</span>
                                                    </span>
                                                    </span>
                                                    <span class="product-quantity">
															(x1)
														</span>
                                                    <div class="product-remove">
                                                        <a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="product-cart mini_cart_item">
                                                <a href="#" class="product-media">
                                                    <img src="<%=basePath%>user/assets/images/item-minicart-3.jpg" alt="img">
                                                </a>
                                                <div class="product-details">
                                                    <h5 class="product-name">
                                                        <a href="#">Grooming Solutions Soap</a>
                                                    </h5>
                                                    <div class="variations">
                                                        <span class="attribute_color">
																<a href="#">Black</a>
															</span> ,
                                                        <span class="attribute_size">
																<a href="#">300ml</a>
															</span>
                                                    </div>
                                                    <span class="product-price">
															<span class="price">
																<span>$45</span>
                                                    </span>
                                                    </span>
                                                    <span class="product-quantity">
															(x1)
														</span>
                                                    <div class="product-remove">
                                                        <a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="subtotal">
                                            <span class="total-title">Subtotal: </span>
                                            <span class="total-price">
													<span class="Price-amount">
														$135
													</span>
                                            </span>
                                        </div>
                                        <div class="actions">
                                            <a class="button button-viewcart" href="<%=basePath%>user/shoppingcart.jsp">
                                                <span>View Bag</span>
                                            </a>
                                            <a href="<%=basePath%>user/checkout.jsp" class="button button-checkout">
                                                <span>Checkout</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
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



                            <a class="menu-bar mobile-navigation menu-toggle " href="# ">
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-nav-container rows-space-20 ">
            <div class="container ">
                <div class="header-nav-wapper main-menu-wapper ">
                    <div class="vertical-wapper block-nav-categori ">
                        <div class="block-title ">
                            <span class="icon-bar ">
								<span></span>
                            <span></span>
                            <span></span>
                            </span>
                            <span class="text ">商品目录</span>
                        </div>
                        <div class="block-content verticalmenu-content ">
                            <ul class="emeriss-nav-vertical vertical-menu emeriss-clone-mobile-menu ">
                                
                                <li class="menu-item menu-item-has-children ">
                                    <a title="Accessories " href="# " class="emeriss-menu-item-title ">二手书籍</a>
                                    <span class="toggle-submenu "></span>
                                    <ul role="menu " class=" submenu ">
                                        <li class="menu-item ">
                                            <a title="Audio " href="# " class="emeriss-item-title ">公共课</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Clothing " href="# " class="emeriss-item-title ">学院</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="New Arrivals " href="# " class="emeriss-item-title ">其他</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item menu-item-has-children ">
                                    <a title="Accessories " href="# " class="emeriss-menu-item-title ">二手服饰</a>
                                    <span class="toggle-submenu "></span>
                                    <ul role="menu " class=" submenu ">
                                        <li class="menu-item ">
                                            <a title="Audio " href="# " class="emeriss-item-title ">上衣</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Clothing " href="# " class="emeriss-item-title ">下装</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="New Arrivals " href="# " class="emeriss-item-title ">鞋</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Accessories " href="# " class="emeriss-item-title ">配饰</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item menu-item-has-children ">
                                    <a title="Accessories " href="# " class="emeriss-menu-item-title ">二手电子产品</a>
                                    <span class="toggle-submenu "></span>
                                    <ul role="menu " class=" submenu ">
                                        <li class="menu-item ">
                                            <a title="Audio " href="# " class="emeriss-item-title ">手机</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Clothing " href="# " class="emeriss-item-title ">平板电脑</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="New Arrivals " href="# " class="emeriss-item-title ">电脑</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a title="Accessories " href="# " class="emeriss-item-title ">各种外设</a>
                                        </li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="header-nav ">
                        <div class="container-wapper ">
                            <ul class="emeriss-clone-mobile-menu emeriss-nav main-menu " id="menu-main-menu ">
                                <li class="menu-item menu-item-has-children ">
                                    <a href="<%=basePath%>user/index.jsp " class="emeriss-menu-item-title " title="Home ">首页</a>                                 
                                </li>
                                <li class="menu-item menu-item-has-children ">
                                    <a href="<%=basePath%>user/gridproducts.jsp " class="emeriss-menu-item-title " title="Shop ">二手书籍</a>
                                    <span class="toggle-submenu "></span>
                                    <ul class="submenu ">
                                        <li class="menu-item ">
                                            <a href="<%=basePath%>user/gridproducts.jsp ">公共课</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="<%=basePath%>user/gridproducts.jsp ">学院</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="<%=basePath%>user/gridproducts.jsp ">其他</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item menu-item-has-children item-megamenu ">
                                    <a href="# " class="emeriss-menu-item-title " title="Pages ">二手服饰</a>
                                    <span class="toggle-submenu "></span>
                                    <div class="submenu mega-menu menu-page ">
                                        <div class="row ">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item ">
                                                <div class="emeriss-custommenu default ">
                                                    <h2 class="widgettitle ">服饰</h2>
                                                    <ul class="menu ">
                                                        <li class="menu-item ">
                                                            <a href="<%=basePath%>user/gridproducts.jsp ">上衣</a>
                                                        </li>
                                                        <li class="menu-item ">
                                                            <a href="<%=basePath%>user/gridproducts.jsp ">下装</a>
                                                        </li>
                                                        <li class="menu-item ">
                                                            <a href="<%=basePath%>user/gridproducts.jsp ">鞋</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item ">
                                                <div class="emeriss-custommenu default ">
                                                    <h2 class="widgettitle ">配饰</h2>
                                                    <ul class="menu ">
                                                        <li class="menu-item ">
                                                            <a href="<%=basePath%>user/productdetails.jsp ">包、首饰、帽子</a>
                                                        </li>
                                                        
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item ">
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item ">
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-item menu-item-has-children ">
                                    <a href="# " class="emeriss-menu-item-title " title="Blogs ">二手电子产品</a>
                                    <span class="toggle-submenu "></span>
                                    <ul class="submenu ">
                                        <li class="menu-item menu-item-has-children ">
                                            <a href="# " class="emeriss-menu-item-title " title="Blog Style ">手机</a>
                                        </li>
                                        <li class="menu-item menu-item-has-children ">
                                            <a href="# " class="emeriss-menu-item-title " title="Post Layout ">平板电脑</a>
                                        </li>
                                        <li class="menu-item menu-item-has-children ">
                                            <a href="# " class="emeriss-menu-item-title " title="Blog Style ">电脑</a>
                                        </li>
                                        <li class="menu-item menu-item-has-children ">
                                            <a href="# " class="emeriss-menu-item-title " title="Post Layout ">外设</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- ----------------------------------------->
    <!-- -------------------header(mobile)------------------ -->
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
    <!-- --------------------------------------------------- -->
    <div>
        <div class="fullwidth-template ">
            <!-- -----------------------第一层（二手书籍）-------------------- -->
            <div class="banner-wrapp ">
                <div class="container ">
                    <div class="row ">
                        <!-- -----------左侧滚动banner--------- -->
                        <div class="col-lg-6 silider-wrapp ">
                            <div class="home-slider ">
                                <div class="slider-owl owl-slick equal-container nav-center " data-slick='{"autoplay ":true, "autoplaySpeed ":9000, "arrows ":false, "dots ":true, "infinite ":true, "speed ":1000, "rows ":1}' data-responsive='[{"breakpoint
                                                            ":"2000 ","settings ":{"slidesToShow ":1}}]'>
                                    <div class="slider-item style7 ">
                                        <div class="slider-inner equal-element ">
                                            <div class="slider-infor ">
                                                <h5 class="title-small ">
                                                    Sale up to 40% off!
                                                </h5>
                                                <h3 class="title-big ">
                                                    Backpacks for business men
                                                </h3>
                                                <div class="price ">
                                                    New Price:
                                                    <span class="number-price ">
                                                $270.00
                                            </span>
                                                </div>
                                                <a href="# " class="button btn-browse ">Browse</a>
                                                <a href="# " class="button btn-shop-the-look bgroud-style ">Shop now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slider-item style8 ">
                                        <div class="slider-inner equal-element ">
                                            <div class="slider-infor ">
                                                <h5 class="title-small ">
                                                    Black Friday Sale!
                                                </h5>
                                                <h3 class="title-big ">
                                                    1/2 OFF Admiral g9 Back Pack
                                                </h3>
                                                <div class="price ">
                                                    Save Price:
                                                    <span class="number-price ">
                                                $170.00
                                            </span>
                                                </div>
                                                <a href="# " class="button btn-shop-product ">Shop now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slider-item style9 ">
                                        <div class="slider-inner equal-element ">
                                            <div class="slider-infor ">
                                                <h5 class="title-small ">
                                                    Emeriss Backpack Collection
                                                </h5>
                                                <h3 class="title-big ">
                                                    The inspiration behind our store
                                                </h3>
                                                <a href="# " class="button btn-chekout ">Shop now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- --------------------------------- -->
                        <div class="col-lg-6 col-md-6 col-sm-12 ">
                            <div class="banner ">
                                <div class="item-banner style5 ">
                                    <div class="inner ">
                                        <div class="banner-content ">
                                            <h3 class="title ">购买二手书籍</h3>
                                            <a href="# " class="button btn-shop-now ">Shop now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ----------------------------------------------------------- -->
            <h3 class="custommenu-title-blog ">
                二手服饰
            </h3>
            <!-- -----------------------第二层（二手服饰）-------------------- -->
            <div class="home-slider fullwidth rows-space-60 ">
                <div class="slider-owl owl-slick equal-container nav-center equal-container " data-slick='{"autoplay ":true, "autoplaySpeed ":10000, "arrows ":true, "dots ":true, "infinite ":true, "speed ":800, "rows ":1}' data-responsive='[{"breakpoint
                                                            ":"2000 ","settings ":{"slidesToShow ":1}}]'>
                    <div class="slider-item style4 ">
                        <div class="slider-inner equal-element ">
                            <div class="container ">
                                <div class="slider-infor ">
                                    <h5 class="title-small ">
                                        Sale up to 40% off!
                                    </h5>
                                    <h3 class="title-big ">
                                        In stock with<br/> 4 colors
                                    </h3>
                                    <div class="price ">
                                        New Price:
                                        <span class="number-price ">
                                                    $25.00
                                                </span>
                                    </div>
                                    <a href="# " class="button btn-browse ">Browse</a>
                                    <a href="# " class="button btn-shop-the-look bgroud-style ">Shop now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="slider-item style5 ">
                        <div class="slider-inner equal-element ">
                            <div class="container ">
                                <div class="slider-infor ">
                                    <h5 class="title-small ">
                                        Start weekend off!
                                    </h5>
                                    <h3 class="title-big ">
                                        Huge sale<br/> Up to 75% Off
                                    </h3>
                                    <div class="when-code ">
                                        When Use Code:
                                        <span class="number-code ">
                                                    EMERISS
                                                </span>
                                    </div>
                                    <a href="# " class="button btn-browse ">Browse</a>
                                    <a href="# " class="button btn-view-promotion bgroud-style ">VIEW ALL</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="slider-item style6 ">
                        <div class="slider-inner equal-element ">
                            <div class="container ">
                                <div class="slider-infor ">
                                    <h5 class="title-small ">
                                        Make your style Difference!
                                    </h5>
                                    <h3 class="title-big ">
                                        Let’s create<br/> Your own style
                                    </h3>
                                    <div class="price ">
                                        Template Price:
                                        <span class="number-price ">
                                                    $89.00
                                                </span>
                                    </div>
                                    <a href="# " class="button btn-browse ">Browse</a>
                                    <a href="# " class="button btn-lets-create bgroud-style ">Let’s Create</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-wrapp ">
                <div class="container ">
                    <div class="row ">
                        <div class="col-lg-3 col-md-3 col-sm-12 ">
                            <div class="banner ">
                                <div class="item-banner style4 ">
                                    <div class="inner ">
                                        <div class="banner-content ">
                                            <h4 class="emeriss-subtitle ">Beard Essential!</h4>
                                            <h3 class="title ">Marines TeeTop</h3>

                                            <a href="# " class="button btn-shop-now ">Shop now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container ">
                            <div class="row ">
                                <div class="col-lg-3 col-md-3 col-sm-12 ">
                                    <div class="banner ">
                                        <div class="item-banner style4 ">
                                            <div class="inner ">
                                                <div class="banner-content ">
                                                    <h4 class="emeriss-subtitle ">Beard Essential!</h4>
                                                    <h3 class="title ">Marines TeeTop</h3>

                                                    <a href="# " class="button btn-shop-now ">Shop now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-12 ">
                                    <div class="banner ">
                                        <div class="item-banner style4 ">
                                            <div class="inner ">
                                                <div class="banner-content ">
                                                    <h4 class="emeriss-subtitle ">Beard Essential!</h4>
                                                    <h3 class="title ">Marines TeeTop</h3>

                                                    <a href="# " class="button btn-shop-now ">Shop now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-12 ">
                                    <div class="banner ">
                                        <div class="item-banner style4 ">
                                            <div class="inner ">
                                                <div class="banner-content ">
                                                    <h4 class="emeriss-subtitle ">Beard Essential!</h4>
                                                    <h3 class="title ">Marines TeeTop</h3>
                                                    <a href="# " class="button btn-shop-now ">Shop now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ----------------------------------------------------------- -->
            <h3 class="custommenu-title-blog ">
                二手电子产品
            </h3>
            <!-- -----------------------第三层（二手电子产品）---------------- -->
            <div class="home-slider-banner ">
                <div class="container ">
                    <div class="row10 ">
                        <div class="col-lg-8 silider-wrapp ">
                            <div class="home-slider ">
                                <div class="slider-owl owl-slick equal-container nav-center " data-slick='{"autoplay ":true, "autoplaySpeed ":9000, "arrows ":false, "dots ":true, "infinite ":true, "speed ":1000, "rows ":1}' data-responsive='[{"breakpoint
                                                            ":"2000 ","settings ":{"slidesToShow ":1}}]'>
                                    <div class="slider-item style7 ">
                                        <div class="slider-inner equal-element ">
                                            <div class="slider-infor ">
                                                <h5 class="title-small ">
                                                    Sale up to 40% off!
                                                </h5>
                                                <h3 class="title-big ">
                                                    Backpacks for business men
                                                </h3>
                                                <div class="price ">
                                                    New Price:
                                                    <span class="number-price ">
                                                $270.00
                                            </span>
                                                </div>
                                                <a href="# " class="button btn-browse ">Browse</a>
                                                <a href="# " class="button btn-shop-the-look bgroud-style ">Shop now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slider-item style8 ">
                                        <div class="slider-inner equal-element ">
                                            <div class="slider-infor ">
                                                <h5 class="title-small ">
                                                    Black Friday Sale!
                                                </h5>
                                                <h3 class="title-big ">
                                                    1/2 OFF Admiral g9 Back Pack
                                                </h3>
                                                <div class="price ">
                                                    Save Price:
                                                    <span class="number-price ">
                                                $170.00
                                            </span>
                                                </div>
                                                <a href="# " class="button btn-shop-product ">Shop now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slider-item style9 ">
                                        <div class="slider-inner equal-element ">
                                            <div class="slider-infor ">
                                                <h5 class="title-small ">
                                                    Emeriss Backpack Collection
                                                </h5>
                                                <h3 class="title-big ">
                                                    The inspiration behind our store
                                                </h3>
                                                <a href="# " class="button btn-chekout ">Shop now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 banner-wrapp ">
                            <div class="banner ">
                                <div class="item-banner style7 ">
                                    <div class="inner ">
                                        <div class="banner-content ">
                                            <h3 class="title ">Designer Backpacks</h3>
                                            <div class="description ">
                                                Adipiscing elit curabitur senectus sem
                                            </div>
                                            <a href="# " class="button btn-lets-do-it ">Shop now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="banner ">
                                <div class="item-banner style8 ">
                                    <div class="inner ">
                                        <div class="banner-content ">
                                            <h3 class="title ">Woodman Backpacks</h3>
                                            <div class="description ">
                                                Cras pulvinar lorem ipsum dolor conse
                                            </div>
                                            <span class="price ">$379.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ----------------------------------------------------------- -->

            <!-- -------------------footer(website)------------------------ -->
            <footer class="footer style7 ">
                <div class="container ">
                    <div class="container-wapper ">
                        <div class="row ">
                            <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4 ">
                                <div class="widget-box ">
                                    <div class="single-img ">
                                        <a href="<%=basePath%>user/index.jsp "><img src="<%=basePath%>user/assets/images/logo-light.png " alt="img "></a>
                                    </div>
                                    <ul class="menu ">
                                        <li class="menu-item ">
                                            <a href="# "><span class="flaticon-placeholder "></span>45 Grand Central Terminal New
                                    York,NY 1017 United State USA</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# "><span class="fa fa-phone "></span>(+123) 456 789 - (+123) 666 888</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# "><span class="fa fa-envelope-o "></span>Contact@yourcompany.com</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# "><span class="flaticon-clock "></span>Mon-Sat 9:00pm - 5:00pm Sun : Closed</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2 ">
                                <div class="emeriss-custommenu default ">
                                    <h2 class="widgettitle ">Quick Menu</h2>
                                    <ul class="menu ">
                                        <li class="menu-item ">
                                            <a href="# ">New arrivals</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# ">Life style</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# ">Clothing</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# ">Backpack</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# ">Grooming</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2 ">
                                <div class="emeriss-custommenu default ">
                                    <h2 class="widgettitle ">Information</h2>
                                    <ul class="menu ">
                                        <li class="menu-item ">
                                            <a href="# ">FAQs</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# ">Track Order</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# ">Delivery</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# ">Contact Us</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="# ">Return</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4 ">
                                <div class="emeriss-newsletter style1 ">
                                    <div class="newsletter-head ">
                                        <h3 class="title ">Newsletter</h3>
                                    </div>
                                    <div class="newsletter-form-wrap ">
                                        <div class="list ">
                                            Get notified of new products, limited releases, and more.
                                        </div>
                                        <input type="email " class="input-text email email-newsletter " placeholder="Your email letter ">
                                        <a href="<%=basePath%>user/test.jsp"><button class="button btn-submit submit-newsletter ">SUBSCRIBE</button></a>
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
                                        Copyright © 2020
                                        <a href="# ">Emeriss</a> . All rights reserved
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="emeriss-payment ">
                                        <img src="<%=basePath%>user/assets/images/payments.png " alt="img ">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- ---------------------------------------------------------- -->
            <!-- -------------------footer(mobile)------------------------- -->
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
                        <a href="<%=basePath%>user/login.jsp ">
                            <span class="icon ">
						<i class="fa fa-user " aria-hidden="true "></i>
					</span> Account
                        </a>
                    </div>
                </div>
            </div>
            <!-- ---------------------------------------------------------- -->
            <!-- --------------------返回top-------------------------------- -->
            <a href="# " class="backtotop ">
                <i class="fa fa-angle-double-up "></i>
            </a>
            <!-- ---------------------------------------------------------- -->
            <script src="<%=basePath%>user/assets/js/jquery-1.12.4.min.js "></script>
            <script src="<%=basePath%>user/assets/js/jquery.plugin-countdown.min.js "></script>
            <script src="<%=basePath%>user/assets/js/jquery-countdown.min.js "></script>
            <script src="<%=basePath%>user/assets/js/bootstrap.min.js "></script>
            <script src="<%=basePath%>user/assets/js/owl.carousel.min.js "></script>
            <script src="<%=basePath%>user/assets/js/magnific-popup.min.js "></script>
            <script src="<%=basePath%>user/assets/js/isotope.min.js "></script>
            <script src="<%=basePath%>user/assets/js/jquery.scrollbar.min.js "></script>
            <script src="<%=basePath%>user/assets/js/jquery-ui.min.js "></script>
            <script src="<%=basePath%>user/assets/js/mobile-menu.js "></script>
            <script src="<%=basePath%>user/assets/js/chosen.min.js "></script>
            <script src="<%=basePath%>user/assets/js/slick.js "></script>
            <script src="<%=basePath%>user/assets/js/jquery.elevateZoom.min.js "></script>
            <script src="<%=basePath%>user/assets/js/jquery.actual.min.js "></script>
            <script src="<%=basePath%>user/assets/js/fancybox/source/jquery.fancybox.js "></script>
            <script src="<%=basePath%>user/assets/js/lightbox.min.js "></script>
            <script src="<%=basePath%>user/assets/js/owl.thumbs.min.js "></script>
            <script src="<%=basePath%>user/assets/js/jquery.scrollbar.min.js "></script>
            <script src='https://ditu.google.cn/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
            <script src="<%=basePath%>user/assets/js/frontend-plugin.js "></script>
</body>

</html>