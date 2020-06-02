<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>旧物-购物车</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=basePath%>user/assets/images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/animate.min.css">
<link rel="stylesheet" href="<%=basePath%>user/assets/css/jquery-ui.css">
<link rel="stylesheet" href="<%=basePath%>user/assets/css/slick.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/chosen.min.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/magnific-popup.min.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/lightbox.min.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/css/mobile-menu.css">
<link rel="stylesheet"
	href="<%=basePath%>user/assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="<%=basePath%>user/assets/css/style.css">
<script src="<%=basePath%>user/assets/js/jquery-1.12.4.min.js "></script>
<script src="<%=basePath%>user/assets/js/round.js"></script>

<!-- 商品數量加減 -->
<script type="text/javascript">






$(function() {
	showTotal();//计算总计

	/*
	给全选添加click事件
	 */
	

	/*
	给所有条目的复选框添加click事件
	 */
	$("input[name='checkboxBtn']:checked").click(function() {
		var all = $(":checkbox[name=checkboxBtn]").length;//所有条目的个数
		var select = $("input[name='checkboxBtn']:checked[checked=checked]").length;//获取所有被选择条目的个数
		
		if (all == select) {//全都选中了
			$("#selectAll").attr("checked", true);//勾选全选复选框
			setJieSuan(true);//让结算按钮有效
		} else if (select == 0) {//谁都没有选中
			$("#selectAll").attr("checked", false);//取消全选
			setJieSuan(false);//让结算失效
		} else {
			$("#selectAll").attr("checked", false);//取消全选
			setJieSuan(true);//让结算有效				
		}
		console.log("all="+all);
		console.log("select="+select);
		showTotal();//重新计算总计
	});

	/*
	给减号添加click事件
	 */
	$(".qtyminus").click(function() {
		// 获取cartItemId
		var id = $(this).attr("id").substring(0, 32);
		// 获取输入框中的数量
		var quantity = $("#" + id + "Qty").val();
		// 判断当前数量是否为1，如果为1,那就不是修改数量了，而是要删除了。
		if (quantity == 1) {
			if (confirm("您是否真要删除该条目？")) {
				location = "/jiuWu/CartItemServlet?method=batchDelete&cartItemIds="
						+ id;
			}
		} else {
			sendUpdateQuantity(id, quantity - 1);
		}
	});

	// 给加号添加click事件
	$(".qtyplus").click(function() {
		// 获取cartItemId
		var id = $(this).attr("id").substring(0, 32);
	
		
		// 获取输入框中的数量
		var quantity = $("#" + id + "Qty").val();
		sendUpdateQuantity(id, Number(quantity) + 1);
	});
});

// 请求服务器，修改数量。
function sendUpdateQuantity(id, quantity) {
	$.ajax({
		async : true,
		cache : false,
		url : "/jiuWu/CartItemServlet",
		data : {
			method : "updateQuantity",
			cartItemId : id,
			quantity : quantity
		},
		type : "POST",
		dataType : "json",
		success : function(result) {
			//1. 修改数量
			
			$("#" + id + "Qty").val(result.quantity);
			console.log("数量="+quantity);

			
			
			//2. 修改小计
		
			
			var subtotals = $(".Subtotal");


			var subtotalsLength=$(".Subtotal").length;

			
			for(var i=0;i<subtotalsLength;i++){

				var b = $.trim(id)==$.trim(subtotals[i].id);
				if(b){
					
					 $(subtotals[i]).text(result.subtotal);
					
				}
			}
			
			console.log("Subtotal:"+result.subtotal);
			console.log(JSON.stringify(result));
			//3. 重新计算总计
			showTotal();
		}
	});
}

/*
 * 计算总计
 */
function showTotal() {
	var total = 0;
	/*
	1. 获取所有的被勾选的条目复选框！循环遍历之
	 */
	$("input[name='checkboxBtn']:checked[checked=checked]").each(function(i,item) {
		
		//2. 获取复选框的值，即其他元素的前缀
		var id = $(this).val();
		console.log("id:"+id);
		
		//3. 再通过前缀找到小计元素，获取其文本
		
	


		var subtotals = $(".Subtotal");


		var subtotalsLength=$(".Subtotal").length;

		
		for(var i=0;i<subtotalsLength;i++){

			var b = $.trim(id)==$.trim(subtotals[i].id);
			if(b){
				
				//4. 累加计算
				total += parseFloat( $(subtotals[i]).text());
				console.log("total--->"+total);
				
			}
		}




		
		
		
	});
	
	// 5. 把总计显示在总计元素上
	
	$("#totalPrice").text(round(total, 2));//round()函数的作用是把total保留2位  
	
	
}

/*
 * 统一设置所有条目的复选按钮
 */
function setItemCheckBox(bool) {
	$("input[name='checkboxBtn']:checked").attr("checked", bool);
}

/*
 * 设置结算按钮样式
 */
function setJieSuan(bool) {
	if (bool) {
		$("#jiesuan").removeClass("kill").addClass("jiesuan");
		$("#jiesuan").unbind("click");//撤消当前元素止所有click事件
	} else {
		$("#jiesuan").removeClass("jiesuan").addClass("kill");
		$("#jiesuan").click(function() {
			return false;
		});
	}

}

/*
 * 批量删除
 */
function batchDelete() {
	// 1. 获取所有被选中条目的复选框
	// 2. 创建一数组，把所有被选中的复选框的值添加到数组中
	// 3. 指定location为CartItemServlet，参数method=batchDelete，参数cartItemIds=数组的toString()
	var cartItemIdArray = new Array();
	$("input[name='checkboxBtn']:checked[checked=checked]").each(function() {
		cartItemIdArray.push($(this).val());//把复选框的值添加到数组中
	});
	location = "/jiuWu/CartItemServlet?method=batchDelete&cartItemIds="
			+ cartItemIdArray;
}

/*
 * 结算
 */
function jiesuan() {
	// 1. 获取所有被选择的条目的id，放到数组中
	var cartItemIdArray = new Array();
	$("input[name='checkboxBtn']:checked[checked=checked]").each(function() {
		cartItemIdArray.push($(this).val());//把复选框的值添加到数组中
	});
	// 2. 把数组的值toString()，然后赋给表单的cartItemIds这个hidden
	$("#cartItemIds").val(cartItemIdArray.toString());
	// 把总计的值，也保存到表单中
	$("#hiddenTotal").val($("#totalPrice").text());
	
	// 3. 提交这个表单
	$("#jieSuanForm").submit();
}

</script>


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
						<i class="fa fa-cog "aria-hidden="true "></i>
					</span>
				</a>
				<div class="block-sub ">
					<a href="# " class="close "> 
						<i class="fa fa-times "aria-hidden="true "></i>
					</a>
					<div class="block-sub-item ">
						<h5 class="block-item-title ">Currency</h5>
						<form class="currency-form emeriss-language ">
							<ul class="emeriss-language-wrap ">
								<li class="active "><a href="# "> <span> English
											(USD) </span>
								</a></li>
								<li><a href="# "> <span> French (EUR) </span>
								</a></li>
								<li><a href="# "> <span> Japanese (JPY) </span>
								</a></li>
							</ul>
						</form>
					</div>
				</div>
			</div>
			<div class="item menu-bar ">
				<a class=" mobile-navigation menu-toggle " href="# "> <span></span>
					<span></span> <span></span>
				</a>
			</div>
		</div>
	</div>
	<!-- -------------------------------------- -->

	<!-------------------body--------------------->
	<div class="site-content ">
		<main class="site-main main-container no-sidebar ">


			<div class="container ">
				<div class="breadcrumb-trail breadcrumbs ">
					<ul class="trail-items breadcrumb ">
						<li class="trail-item trail-begin "><a href=" "> <span>
									首页 </span>
						</a></li>
						<li class="trail-item trail-end active "><span> 购物车 </span></li>
					</ul>
				</div>
				<div class="row ">
					<div class="main-content-cart main-content col-sm-12 ">
						<h3 class="custom_blog_title ">购物车</h3>
						<div class="page-main-content ">
							
								<div class="shoppingcart-content ">
									<form class="cart-form ">
									
										<table class="shop_table ">
											<thead>
												<tr>
													<th class="product-checked"></th>
													<th class="product-remove "></th>
													<th class="product-thumbnail "></th>
													<th class="product-name "></th>
													<th class="product-price "></th>
													<th class="product-quantity "></th>
													<th class="product-subtotal "></th>
												</tr>
											</thead>
											<tbody>
											<c:forEach items="${cartItemList }" var="cartItem" >
												<tr class="cart_item ">
													<td class="product-checked">
	                                                    <input type="checkbox" style="width: 15px; height: 15px;" value="${cartItem.cartItemId }" name="checkboxBtn" checked="checked">
	                                                </td>
													<td class="product-remove ">
														<a href="<c:url value='/CartItemServlet?method=batchDelete&cartItemIds=${cartItem.cartItemId }'/>" class="remove "></a>
													</td>
													<td class="product-thumbnail ">
														<a href="<c:url value='/GoodsServlet?method=load&gid=${cartItem.goods.gid }'/> "> 
															<img src="<c:url value='/${cartItem.goods.image_b }'/>" alt="img" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image ">
														</a> 
													</td>
													<td class="product-name " data-title="Product ">
														<a href="<c:url value='/GoodsServlet?method=load&gid=${cartItem.goods.gid }'/>" class="title ">${cartItem.goods.gname }</a> 
													</td>
													<td class="product-quantity " data-title="Quantity ">
														<div class="quantity ">
															<div class="control ">
																<a class="btn-number qtyminus quantity-minus "  id="${cartItem.cartItemId }Minus" style="cursor:pointer" >-</a>
																<input type="text "  id="${cartItem.cartItemId }Qty" value="${cartItem.quantity } " title="Qty " class="input-qty qty" readonly="readonly"> 
																<a class="btn-number qtyplus quantity-plus" id="${cartItem.cartItemId }Plus" style="cursor:pointer" >+</a>
															</div>
														</div>
													</td>
													<td class="product-price " data-title="Price ">
														<span id="${cartItem.cartItemId } "  class="woocommerce-Price-currencySymbol amount Subtotal"> 
															
															${cartItem.subtotal }
														</span> 
													</td>
												</tr>
												</c:forEach>
												<tr>
													<td class="actions">
														<div class="coupon ">
															<label class="coupon_code ">促销码:</label> 
															<input type="text " class="input-text " placeholder="请输入促销码 ">
														</div>
														<div class="order-total ">
															<span class="title "> 总计 </span> 
															<span class="total-price " id="totalPrice" name="total" value="total"> </span>
														</div>
													</td>
												</tr> 
											</tbody>
										</table>
									</form>	
								
							
							 <!-- <form class="cart-form ">
								<table class="shop_table ">
									<tbody>
										
									</tbody>
								</table>
							</form>  -->
							
							<div class="control-cart ">
								<a href="<%=basePath%>user/index.jsp ">
									<button class="button btn-continue-shopping ">继续购物</button>
								</a> 
								<a href="javascript:jiesuan();" id="jiesuan" class="jiesuan">
									<button class="button btn-cart-to-checkout ">付款</button>
								</a>

						   </div>
						   <form id="jieSuanForm" action="<c:url value='/CartItemServlet'/>" method="post">
								<input type="hidden" name="cartItemIds" id="cartItemIds" /> 
								<input type="hidden" name="total" id="hiddenTotal" /> 
								<input type="hidden" name="method" value="loadCartItems" />
						   </form>
						</div>
					</div>
				</div>
			</div>

		</main>
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
								Copyright © 2020 <a href="# ">jiuWu</a> . All rights reserved
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
				<a href="<%=basePath%>user/index.jsp "> <span class="icon ">
						<i class="fa fa-home " aria-hidden="true "></i>
				</span> Home
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-wishlist ">
				<a href="# "> <span class="icon "> <i
						class="fa fa-heart " aria-hidden="true "></i>
				</span> Wishlist
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-cart ">
				<a href="# "> <span class="icon "> <i
						class="fa fa-shopping-basket " aria-hidden="true "></i> <span
						class="count-icon "> 0 </span>
				</span> <span class="text ">Cart</span>
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-user ">
				<a href="# "> <span class="icon "> <i class="fa fa-user "
						aria-hidden="true "></i>
				</span> Account
				</a>
			</div>
		</div>
	</div>
	<!---------------------------------------------------->
	<!------------------------upper----------------------->
	<a href="# " class="backtotop "> <i class="fa fa-angle-double-up "></i>
	</a>
	<!---------------------------------------------------->


	<!------------script--------------------->
	
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