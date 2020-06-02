<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>旧物-支付</title>
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
<body>
	
	<!-------------------- header(website) ---------------->
    <header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message">Welcome to our online store!</div>
				</div>
				<div class="top-bar-right">
					<div class="header-language">
						<div class="emeriss-language emeriss-dropdown">
							<a href="#" class="active language-toggle"
								data-emeriss="emeriss-dropdown"> <span> English (USD)
							</span>
							</a>
							<ul class="emeriss-submenu">
								<li class="switcher-option"><a href="#"> <span>
											French (EUR) </span>
								</a></li>
								<li class="switcher-option"><a href="#"> <span>
											Japanese (JPY) </span>
								</a></li>
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
					<div
						class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
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
										<input type="text" class="input" name="s" value=""
											placeholder="搜索">
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
							<div
								class="block-minicart emeriss-mini-cart block-header emeriss-dropdown">
								<a href="javascript:void(0);" class="shopcart-icon"
									data-emeriss="emeriss-dropdown"> Cart <span class="count">
										0 </span>
								</a>
								<div class="shopcart-description emeriss-submenu">
									<div class="content-wrap">
										<h3 class="title">Shopping Cart</h3>
										<ul class="minicart-items">
											<li class="product-cart mini_cart_item"><a href="#"
												class="product-media"> <img
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
												</div></li>
											
										</ul>
										<div class="subtotal">
											<span class="total-title">Subtotal: </span> <span
												class="total-price"> <span class="Price-amount">
													$135 </span>
											</span>
										</div>
										<div class="actions">
											<a class="button button-viewcart"
												href="<%=basePath%>user/shoppingcart.jsp"> <span>View
													Bag</span>
											</a> <a href="<%=basePath%>user/checkout.jsp"
												class="button button-checkout"> <span>Checkout</span>
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
								  
								  <a href="<c:url value='/UserServlet?method=quit'/>" target="_parent">退出</a>
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
	<!-- -------------------------------------- -->
	
	<!-------------------------------------------->
	<div class="main-content main-content-checkout ">
        <div class="container ">
            <div class="row ">
                <div class="col-lg-12 ">
                    <div class="breadcrumb-trail breadcrumbs ">
                        <ul class="trail-items breadcrumb ">
                            <li class="trail-item trail-begin ">
                                <a href="index.html ">首页</a>
                            </li>
                            <li class="trail-item trail-end active ">
                               	 确认订单
                            </li>
                            <li class="trail-item trail-end active ">
                               	 付款
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="checkout-wrapp ">
               
                   <div class="payment-method-wrapp ">
	                    <div class="payment-method-form checkout-form ">
	                        <div class="row-col-1 row-col ">
	                            <div class="payment-method ">
	                                <h3 class="title-form ">
	                                    付款方式
	                                </h3>
	                                <div class="group-button-payment ">
	                                    <a href="# " class="button btn-credit-card ">借记卡</a>
	                                    <a href="# " class="button btn-paypal ">微信/支付宝</a>
	                                </div>
	                                <p class="form-row form-row-card-number ">
	                                    <label class="text ">卡号</label>
	                                    <input type="text " class="input-text " placeholder="xxx - xxx - xxx - xxx ">
	                                </p>
	                                <p class="form-row forn-row-col forn-row-col-1 ">
	                                    <label class="text ">月</label>
	                                    <select title="month " data-placeholder="01 " class="chosen-select " tabindex="1 ">
	                        <option value="thang01 ">01</option>
	                        <option value="thang02 ">02</option>
	                        <option value="thang03 ">03</option>
	                        <option value="thang04 ">04</option>
	                        <option value="thang05 ">05</option>
	                        <option value="thang06 ">06</option>
	                        <option value="thang07 ">07</option>
	                        <option value="thang08 ">08</option>
	                        <option value="thang09 ">09</option>
	                        <option value="thang10 ">10</option>
	                        <option value="thang11 ">11</option>
	                        <option value="thang12 ">12</option>
	                    </select>
	                                </p>
	                                <p class="form-row forn-row-col forn-row-col-2 ">
	                                    <label class="text ">年</label>
	                                    <select title="Year " data-placeholder="2017 " class="chosen-select " tabindex="1 ">
	                        <option value="nam2010 ">2010</option>
	                        <option value="nam2011 ">2011</option>
	                        <option value="nam2012 ">2012</option>
	                        <option value="nam2013 ">2013</option>
	                        <option value="nam2014 ">2014</option>
	                        <option value="nam2015 ">2015</option>
	                        <option value="nam2016 ">2016</option>
	                        <option value="nam2017 ">2017</option>
	                        <option value="nam2018 ">2018</option>
	                        <option value="nam2019 ">2019</option>
	                    </select>
	                                </p>
	                                <p class="form-row forn-row-col forn-row-col-3 ">
	                                    <label class="text ">CVV</label>
	                                    <select title="CVV " data-placeholder="238 " class="chosen-select " tabindex="1 ">
	                        <option value="cvv1 ">238</option>
	                        <option value="cvv2 ">354</option>
	                        <option value="cvv3 ">681</option>
	                        <option value="cvv4 ">254</option>
	                        <option value="cvv5 ">687</option>
	                        <option value="cvv6 ">123</option>
	                        <option value="cvv7 ">951</option>
	                        <option value="cvv8 ">852</option>
	                        <option value="cvv9 ">753</option>
	                        <option value="vcc10 ">963</option>
	                    </select>
	                                </p>
	                            </div>
	                        </div>
	                        
	                    </div>
	                    <div class="button-control ">
	                        <a href="<%=basePath %>user/index.jsp " class="button btn-back-to-shipping ">返回购物</a>
	                        <a href="<%=basePath %>user/orderSucc.jsp " class="button btn-pay-now ">支付</a>
	                    </div>
                    </div>
                    
                   
               </div>
           </div>
       </div>
	<!-------------------------------------------->
	
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
								<li><a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-facebook "></i>
								</a></li>
								<li><a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-twitter "></i>
								</a></li>
								<li><a href="# " class="social-item " target="_blank ">
										<i class="icon fa fa-instagram "></i>
								</a></li>
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
	<!---------------------------------------------------->
	<!------------------------upper----------------------->
	<a href="# " class="backtotop ">
		<i class="fa fa-angle-double-up "></i>
	</a>
	<!---------------------------------------------------->	
		
		
	<!------------script--------------------->
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
	<script src="<%=basePath%>user/assets/js/frontend-plugin.js "></script>
	<!-------------------------------------->	

</body>
</html>