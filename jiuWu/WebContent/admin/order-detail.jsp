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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>旧物后台管理系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<%=basePath%>admin/css/_all-skins.min.css">

    <link rel="stylesheet" href="<%=basePath%>admin/css/back-end.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<style>
		.nav-tabs-custom>.nav-tabs>li.active {
		    border-top-color: #d79468;
		}
	</style>

</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="<%=basePath%>admin/admin.jsp" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg">旧物后台管理</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<%=basePath%>admin/img/user1-128x128.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs">管理员：admin</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="<%=basePath%>admin/img/user1-128x128.jpg" class="img-circle" alt="User Image">

                                    <p>
                                        管理员：admin
                                        <small>Member since Nov. 2012</small>
                                    </p>
                                </li>

                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- Control Sidebar Toggle Button -->
                        <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="<%=basePath%>admin/img/user1-128x128.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>管理员：admin</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
				<!-- search form -->
				<form action="<c:url value='/AdminGoodsServlet'/>" method="get" class="sidebar-form">
			        <input type="hidden" name="method" value="findByCombination"/>
			        <div class="input-group">
			          <input type="text" name="gname" class="form-control" placeholder="Search...">
			              <span class="input-group-btn">
			                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
			                </button>
			              </span>
			        </div>
			    </form>
				<!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li>
                        <a href="<%=basePath%>admin/category.jsp">
                            <i class="fa fa-list-alt"></i> <span>分类管理</span>

                        </a>

                    </li>
                    <li >
                        <a href="#">
                            <i class="fa fa-table"></i> <span>商品管理</span>
                            
                        </a>
                        
                    </li>
                    <li>
                        <a href="<%=basePath%>admin/order.jsp">
                            <i class="fa fa-list-alt"></i> <span>订单管理</span>

                        </a>

                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            
            
            <section class="invoice">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header">
            <i class="fa fa-globe"></i>用户订单
            <c:choose>
				<c:when test="${order.status eq 1 }">(等待付款)</c:when>
				<c:when test="${order.status eq 2 }">(准备发货)</c:when>
				<c:when test="${order.status eq 3 }">(等待确认)</c:when>
				<c:when test="${order.status eq 4 }">(交易成功)</c:when>
				<c:when test="${order.status eq 5 }">(已取消)</c:when>
			</c:choose>
            <small class="pull-right">下单时间:${order.ordertime }</small>
          </h2>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->
      <div class="row invoice-info">
        <div class="col-sm-4 invoice-col">派送地址 ${order.address }<address>
            <strong>用户名</strong><br><br><br>
            <br>
            
          </address>
        </div>
        <!-- /.col -->
        
        <!-- /.col -->
        
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- Table row -->
      <div class="row">
        <div class="col-xs-12 table-responsive">
          <table class="table table-striped">
            <thead>
            <tr>
              <th>产品编号</th>
              <th>产品名</th>
              <th>数量</th>
              <th>小计</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${order.orderItemList }" var="orderItem">
	            <tr>
	              <td><img style="width:10%;"  src="<c:url value='/${orderItem.goods.image_b }'/>"/>${orderItem.goods.gname }</td>
	              <td>${orderItem.quantity }</td>
	              <td>${orderItem.goods.currPrice }</td>
	              <td>${orderItem.subtotal }</td>
	            </tr>
            </c:forEach>
            
            </tbody>
          </table>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <div class="row">
        <!-- accepted payments column -->
        <div class="col-xs-6">
          <p class="lead">支付方式</p>
          <img src="<%=basePath %>user/credit/visa.png" alt="Visa">
          <img src="<%=basePath %>user/credit/mastercard.png" alt="Mastercard">
          <img src="<%=basePath %>user/credit/american-express.png" alt="American Express">
          <img src="<%=basePath %>user/credit/paypal2.png" alt="Paypal">

          
        </div>
        <!-- /.col -->
        <div class="col-xs-6">
          <p class="lead">下单时间</p>

          <div class="table-responsive">
            <table class="table">
              <tbody><tr>
                <th style="width:50%">小计：</th>
                <td>￥${order.total }</td>
              </tr>
              
              <tr>
                <th>运费</th>
                <td>￥0</td>
              </tr>
              <tr>
                <th>总计：</th>
                <td>￥${order.total }</td>
              </tr>
            </tbody></table>
          </div>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- this row will not appear when printing -->
      <div class="row no-print">
        <div class="col-xs-12">
          <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i>打印</a>
          <a href="<c:url value='/AdminOrderServlet?method=findAll'/>">
          	<button type="button" class="btn btn-warning pull-right"><i class="fa  fa-arrow-circle-left"></i> 返回</button>
          </a>
          <c:if test="${order.status eq 2 and btn eq 'deliver' }">
				<a id="deliver" href="<c:url value='/AdminOrderServlet?method=deliver&oid=${order.oid }'/>">
					<button type="button" class="btn btn-warning pull-right"><i class="fa fa-shopping-cart"></i> 发　货</button>
				</a>
			</c:if>
			<c:if test="${order.status eq 1 and btn eq 'cancel' }">
				<a id="cancel" href="<c:url value='/AdminOrderServlet?method=cancel&oid=${order.oid }'/>">
					<button type="button" class="btn btn-danger pull-right" style="margin-right: 5px;"><i class="fa fa-warning"></i> 取消</button>
				</a>
			</c:if>
          <!-- <button type="button" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment
          </button>
          <button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
            <i class="fa fa-download"></i> Generate PDF
          </button> -->
        </div>
      </div>
    </section>
            
      
            </section>


        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="pull-right hidden-xs">

            </div>
            <strong>Copyright &copy; 2014-2019 <a href="#">itszjypolly</a>.</strong> All rights reserved.
        </footer>

    </div>

    <!-- jQuery 3 -->
    <script src="<%=basePath%>admin/js/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="<%=basePath%>admin/js/bootstrap.min.js"></script>
    <!-- Slimscroll -->
    <script src="<%=basePath%>admin/js/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="<%=basePath%>admin/js/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="<%=basePath%>admin/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<%=basePath%>admin/js/demo.js"></script>
</body>

</html>