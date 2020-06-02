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

	<!-- jQuery 3 -->
    <script src="<%=basePath%>admin/js/jquery.min.js"></script> 
	<script type="text/javascript">
		function checkForm() {
			if(!$("#cname").val()) {
				alert("分类名不能为空！");
				return false;
			}
			if(!$("#desc").val()) {
				alert("分类描述不能为空！");
				return false;
			}
			if(!$("#pid").val()) {
				alert("分类描述不能为空！");
				return false;
			}
			return true;
		}
	</script>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="#" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg">旧物</span>
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

                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li >
                        <a href="<c:url value='/AdminCategoryServlet?method=findAll'/>">
                            <i class="fa fa-list-alt"></i> <span>分类管理</span>

                        </a>

                    </li>
                    <li class="treeview ">
                        <a href="#">
                            <i class="fa fa-table"></i> <span>商品管理</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i>二手书籍</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i> 二手电子商品</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i> 二手服饰</a></li>
                        </ul>
                    </li>
                    <li >
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
           <section class="content">
           	<div class="row">
           		<div class="col-md-6">
           			<div class="box box-warning">
			            <div class="box-header with-border">
			              <h3 class="box-title">添加一级分类</h3>
			            </div>
			            <!-- /.box-header -->
			            <!-- form start -->
			            <form role="form" action="<c:url value='/AdminCategoryServlet'/>" method="post" onsubmit="return checkForm()">
			              <input type="hidden" name="method" value="addParent"/>
			              <div class="box-body">
			                <div class="form-group">
			                  <label for="exampleInputEmail1">分类名称</label>
			                  <input type="text" class="form-control" id="cname" name="cname" placeholder="分类名称">
			                </div>
			                <div class="form-group">
			                  <label>分类描述</label>
			                  <textarea class="form-control" rows="3" name="desc" id="desc" placeholder="添加描述 ..."></textarea>
			                </div>
			                
			              </div>
			              <!-- /.box-body -->
			
			              <div class="box-footer">
			                <button type="submit" class="btn btn-warning">添加一级分类</button>
			              </div>
			            </form>
	          	   </div>
	          	   <div class="box box-warning">
			            <div class="box-header with-border">
			              <h3 class="box-title">修改一级分类</h3>
			            </div>
			            <!-- /.box-header -->
			            <!-- form start -->
			            <form role="form" action="<c:url value='/AdminCategoryServlet'/>" method="post" onsubmit="return checkForm()">
			              <input type="hidden" name="cid" value="${parent.cid }"/>
    					  <input type="hidden" name="method" value="editParent"/>
			              <div class="box-body">
			                <div class="form-group">
			                  <label for="exampleInputEmail1">分类名称</label>
			                  <input type="text" class="form-control" id="cname" name="cname" value="${parent.cname }">
			                </div>
			                <div class="form-group">
			                  <label>分类描述</label>
			                  <textarea class="form-control" rows="3" name="desc" id="desc" >${parent.desc }</textarea>
			                </div>
			                
			              </div>
			              <!-- /.box-body -->
			
			              <div class="box-footer">
			                <button type="submit" class="btn btn-warning">修改一级分类</button>
			              </div>
			            </form>
	          	   </div>
           		</div>
           		<div class="col-md-6">
           			<div class="box box-warning">
			            <div class="box-header with-border">
			              <h3 class="box-title">添加二级分类</h3>
			            </div>
			            <!-- /.box-header -->
			            <!-- form start -->
			            <form role="form" action="<c:url value='/AdminCategoryServlet'/>" method="post" onsubmit="return checkForm()">
			              <input type="hidden" name="method" value='addChild'/>
			              <div class="box-body">
			                <div class="form-group">
			                  <label for="exampleInputEmail1">分类名称</label>
			                  <input type="text" class="form-control" id="cname" name="cname" placeholder="分类名称">
			                </div>
			                <div class="form-group">
			                  <label>一级分类</label>
			                  <select class="form-control">
			                    <option value="">===选择1级分类===</option>
			                    <c:forEach items="${parents }" var="parent">
			                    	<option value="${parent.cid }" <c:if test="${parent.cid eq pid }">selected="selected"</c:if> >${parent.cname }</option>
			                    </c:forEach>
			                  </select>
			                </div>
			                <div class="form-group">
			                  <label>分类描述</label>
			                  <textarea class="form-control" rows="3" name="desc" id="desc" placeholder="添加描述 ..."></textarea>
			                </div>
			                
			              </div>
			              <!-- /.box-body -->
			
			              <div class="box-footer">
			                <button type="submit" class="btn btn-warning">添加二级分类</button>
			                
			              </div>
			            </form>
	          	   </div>
           		
           			<div class="box box-warning">
			            <div class="box-header with-border">
			              <h3 class="box-title">修改二级分类</h3>
			            </div>
			            <!-- /.box-header -->
			            <!-- form start -->
			            <form role="form" action="<c:url value='/AdminCategoryServlet'/>" method="post" onsubmit="return checkForm()">
			              <input type="hidden" name="method" value="editChild"/>
    					  <input type="hidden" name="cid" value="${child.cid }"/>
			              <div class="box-body">
			                <div class="form-group">
			                  <label for="exampleInputEmail1">分类名称</label>
			                  <input type="text" class="form-control" id="cname" name="cname" value="${parent.cname }">
			                </div>
			                <div class="form-group">
			                  <label>一级分类</label>
			                  <select class="form-control" name="pid" id="pid">
			                    <option value="">===选择1级分类===</option>
			                    <c:forEach items="${parents }" var="parent">
    								<option value="${parent.cid }" <c:if test="${parent.cid eq child.parent.cid }">selected="selected"</c:if> >${parent.cname }</option>
								</c:forEach>
			                  </select>
			                </div>
			                <div class="form-group">
			                  <label>分类描述</label>
			                  <textarea class="form-control" rows="3" name="desc" id="desc" >${child.desc }</textarea>
			                </div>
			                
			              </div>
			              <!-- /.box-body -->
			
			              <div class="box-footer">
			                <button type="submit" class="btn btn-warning">修改二级分类</button>
			              </div>
			            </form>
	          	   </div>
           		</div>
           	</div>
           		
           </section>

        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="pull-right hidden-xs">

            </div>
            <strong>Copyright &copy; 2014-2019 <a href="#">itszjypolly</a>.</strong> All rights reserved.
        </footer>

    </div>

  
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