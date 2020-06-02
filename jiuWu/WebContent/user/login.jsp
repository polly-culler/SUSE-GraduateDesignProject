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
    <title>旧物-登录/注册</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>user/assets/images/favicon.png" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&display=swap" rel="stylesheet">
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

<body class="inblog-page">
    <!-- -----------------header-------------------- -->
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
                                            <a class="button button-viewcart" href="shoppingcart.html">
                                                <span>View Bag</span>
                                            </a>
                                            <a href="<%=basePath%>user/checkout.html" class="button button-checkout">
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
                                                <a data-toggle="tab" aria-expanded="true" href="#header-tab-login">Login</a>
                                            </li>
                                            <li>
                                                <a data-toggle="tab" aria-expanded="true" href="#header-tab-rigister">Register</a>
                                            </li>
                                        </ul>

                                        <!-- ----------登录/注册----------- -->
                                        <div class="tab-container">
                                            <!-- 登录 -->
                                            <div id="header-tab-login" class="tab-panel active">
                                                <form method="post" action="#" class="login form-login">
                                                    <p class="form-row form-row-wide">
                                                        <input type="email"  placeholder="Email " class="input-text ">
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
                                                        <input type="submit " class="button " value="Login ">
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
                                                        <input type="submit " class="button " value="Register ">
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
                                    <a href="<%=basePath%>user/gridproducts.html " class="emeriss-menu-item-title " title="Shop ">二手书籍</a>
                                    <span class="toggle-submenu "></span>
                                    <ul class="submenu ">
                                        <li class="menu-item ">
                                            <a href="<%=basePath%>user/gridproducts.html ">公共课</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="<%=basePath%>user/gridproducts.html ">学院</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="<%=basePath%>user/gridproducts.html ">其他</a>
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
                                                            <a href="<%=basePath%>user/gridproducts.html ">上衣</a>
                                                        </li>
                                                        <li class="menu-item ">
                                                            <a href="<%=basePath%>user/gridproducts.html ">下装</a>
                                                        </li>
                                                        <li class="menu-item ">
                                                            <a href="<%=basePath%>user/gridproducts.html ">鞋</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item ">
                                                <div class="emeriss-custommenu default ">
                                                    <h2 class="widgettitle ">配饰</h2>
                                                    <ul class="menu ">
                                                        <li class="menu-item ">
                                                            <a href="<%=basePath%>user/productdetails.html ">包、首饰、帽子</a>
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
	<!-- ------------------------------------------- -->
	<!-- -----------------header(mobile) -->
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
	<!-- ------------------------------------------- -->
	<div class="main-content main-content-login ">
		<div class="container ">
			<div class="row ">
				<div class="col-lg-12 ">
					<div class="breadcrumb-trail breadcrumbs ">
						<ul class="trail-items breadcrumb ">
							<li class="trail-item trail-begin ">
								<a href="<%=basePath%>user/index.jsp ">首页</a>
							</li>
							<li class="trail-item trail-end active ">
								登录/注册
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row ">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<div class="site-main ">
						<h3 class="custom_blog_title ">
							注册/登录
						</h3>
						<div class="customer_login ">
							<div class="row ">
								<div class="col-lg-6 col-md-6 col-sm-12 ">
									<div class="login-item ">
										<h5 class="title-login ">登录</h5>
										<!-- ------登录form---- -->
										<form class="login " action="<c:url value='/UserServlet'/>" method="post">
											<input type="hidden" name="method" value="login" />
											<div class="social-account ">
												<h6 class="title-social ">使用其他方式登录</h6>
												<a href="# " class="mxh-item facebook ">
													<i class="icon fa fa-facebook-square " aria-hidden="true "></i>
													<span class="text ">FACEBOOK</span>
												</a>
												<a href="# " class="mxh-item twitter ">
													<i class="icon fa fa-twitter " aria-hidden="true "></i>
													<span class="text ">TWITTER</span>
												</a>
											</div>
											<p class="form-row form-row-wide ">
												<label class="text ">用户名</label>
												<input title="loginname " type="text " name="loginname" class="input-text ">
											</p>
											<p class="form-row form-row-wide ">
												<label class="text ">密码</label>
												<input title="loginpass " type="password " name="loginpass" class="input-text ">
											</p>
											<p class="lost_password ">
												<span class="inline ">
													
													<label for="cb1 " class="label-text ">记住我</label>
												</span>
												<a href="# " class="forgot-pw ">忘记密码</a>
											</p>
											<p class="form-row ">
												<input type="submit" id="submit" class="button btn-shop-now " value="登录 ">
												<a href="<c:url value='/CategoryServlet?method=findAll'/>" ></a>
											</p>
										</form>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12 ">
									<div class="login-item ">
										<h5 class="title-login ">注册</h5>
										<!---------注册-------  -->
										<form class="register " action="<c:url value='/UserServlet'/>" method="post">
											<input type="hidden" name="method" value="regist" />
											<p class="form-row form-row-wide ">
												<label class="text ">邮箱</label>
												<input title="email " type="email" name="email" class="input-text ">
											</p>
											<p class="form-row form-row-wide ">
												<label class="text ">用户名</label>
												<input title="loginname " type="text" name="loginname" class="input-text ">
											</p>
											<p class="form-row form-row-wide ">
												<label class="text ">密码</label>
												<input title="loginpass" type="password " name="loginpass" class="input-text ">
											</p>
											<p class="form-row ">
												<span class="inline ">
													
													<label for="cb2 " class="label-text ">我同意 <span>服务&条款</span></label>
												</span>
											</p>
											<p class=" ">
												<input type="submit" id="submit" class="button btn-shop-now" value="注册 ">
											</p>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
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
								<input type="email " class="input-text email email-newsletter "
									   placeholder="Your email letter ">
								<button class="button btn-submit submit-newsletter ">SUBSCRIBE</button>
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
								<a href="# ">Emeriss</a>
								. All rights reserved
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
	<div class="footer-device-mobile ">
		<div class="wapper ">
			<div class="footer-device-mobile-item device-home ">
				<a href="index.html ">
					<span class="icon ">
						<i class="fa fa-home " aria-hidden="true "></i>
					</span>
					Home
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-wishlist ">
				<a href="# ">
					<span class="icon ">
						<i class="fa fa-heart " aria-hidden="true "></i>
					</span>
					Wishlist
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
					</span>
					Account
				</a>
			</div>
		</div>
	</div>
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