<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="渠道客服系统.Nhome.Team" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=8"/>
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>
<meta http-equiv="Cache-control" content="no-cache"/>
<meta http-equiv="Cache" content="no-cache"/>
    <title>渠道客服信息系统</title>
    <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"/>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"/>
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css"/>
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.2.1/css/buttons.dataTables.min.css"/>
   <link rel="stylesheet" href="https://cdn.datatables.net/fixedcolumns/3.2.2/css/fixedColumns.dataTables.min.css"/>
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css"/>
		<link rel="stylesheet" type="text/css" href="pages/video/css/slicebox.css" />
		<link rel="stylesheet" type="text/css" href="pages/video/css/custom.css" />
		<link rel="stylesheet" href="http://dreamsky.github.io/main/blog/common/init.css"/>
  <!-- Theme style -->

  <link rel="stylesheet" href="dist/css/AdminLTE.min.css"/>
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css"/>
    <script src="//api.html5media.info/1.1.8/html5media.min.js"></script> 
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
     <style>
    .color-palette {
      height: 35px;
      line-height: 35px;
      text-align: center;
    }

    .color-palette-set {
      margin-bottom: 15px;
    }

    .color-palette span {
      display: none;
      font-size: 12px;
    }

    .color-palette:hover span {
      display: block;
    }

    .color-palette-box h4 {
      position: absolute;
      top: 100%;
      left: 25px;
      margin-top: -40px;
      color: rgba(255, 255, 255, 0.8);
      font-size: 12px;
      display: block;
      z-index: 7;
    }
.top-banner {
			background-color: rgba(255, 255, 255, 0.55);
		}
		.top-banner a {
			color: #019135;
		}
		h1 {
			margin-top: 100px;
			font-family: 'Microsoft Yahei';
			font-size: 36px;
			color: #019157;
		}		
  </style>
    		<script type="text/javascript" src="pages/video/js/modernizr.custom.46884.js"></script>
</head>

<body class="hold-transition skin-blue sidebar-mini">

    <form id="form1" runat="server">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index.aspx" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>渠道</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>渠道客服信息系统</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
         
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
          <img src="dist/img/kefu.jpg" class="img-circle" alt="User Image"/>
        </div>
        <div class="pull-left info">
            <asp:Label runat="server" ID="Nlab" />
            <p> </p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">永远相信美好的事情即将发生</li>
        <li id="MyHome" class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>我的首页</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="/Nhome/index.aspx"><i  class="fa fa-circle-o"></i> 个人信息</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 我的数据</a></li>
          </ul>
        </li>
        <li>
          <a href="#">
            <i class="fa fa-th"></i> <span>业务架构</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>数据展示</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> 售前数据</a></li>
            <li><a href="index-sh.aspx"><i class="fa fa-circle-o"></i> 售后数据</a></li>
            <li><a href="index-jd.aspx"><i class="fa fa-circle-o"></i> 京东数据</a></li>
            <li><a href="index-pj.aspx"><i class="fa fa-circle-o"></i> 评论数据</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 调控数据</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 其他</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>自助取数</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="index-sq.aspx"><i class="fa fa-circle-o"></i> 售前数据</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 售后数据</a></li>
           <li><a href="#"><i class="fa fa-circle-o"></i> 京东数据</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 评论数据</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 调控数据</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 其他</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>培训相关</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> 售前培训</a></li>
            <li><a href="/Nhome/afterservice-train.aspx"><i class="fa fa-circle-o"></i> 售后培训</a></li>
           <li><a href="/Nhome/pages/train/JD.html" target="_blank"><i class="fa fa-circle-o"></i> 京东培训</a></li>
             <li><a href="#"><i class="fa fa-circle-o"></i> 评论培训</a></li>
              <li><a href="#"><i class="fa fa-circle-o"></i> 其他培训</a></li>
          </ul>
        </li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>团队风采</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> 漂亮美眉</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 阳光帅哥</a></li>
            <li class="active"><a href="team.aspx"><i class="fa fa-circle-o"></i> 团建活动</a></li>
          </ul>
        </li>
        <li>
          <a href="/Nhome/suggest.aspx">
            <i class="fa fa-calendar"></i> <span>建议反馈</span>
          </a>
        </li>
        <li><a href="/Nhome/document.aspx"><i class="fa fa-book"></i> <span>部门文档</span></a></li>
        <li><a href="#" id="exit" onclick="exit()"><i class="fa fa-sign-out"></i> <span>退出登录</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
       <section class="content-header">
      <h1>
        您好！
        <small><asp:Label runat="server" ID="Nlab2" /></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">index-zsjx</li>
      </ol>
    </section>
 <section class="content">

      <!-- row -->
      <div class="row">
        <div class="col-md-12">
          <!-- The time line -->
          <ul class="timeline">
            <!-- timeline time label -->


            <!-- END timeline item -->
            <!-- timeline time label -->
            <li class="time-label">
                  <span class="bg-green">
                   知识竞赛-智在必得
                  </span>
            </li>
            <!-- /.timeline-label -->
            <!-- timeline item -->
            <li>
              <i class="fa fa-camera bg-purple"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i> 风采照片</span>

                <h3 class="timeline-header"><a href="#">智在必得</a> 决赛队伍</h3>

                <div class="timeline-body">
				<ul id="sb-slider" class="sb-slider">
					<li>
						<a href="#" ><img src="pages/video/答案队.png" alt="image1"/></a>


					</li>
					<li>
						<a href="#" ><img src="pages/video/666队.png" alt="image2"/></a>

					</li>
					<li>
						<a href="#" ><img src="pages/video/天猫奥运代表队.png" alt="image3"/></a>


					</li>
                    <li>
						<a href="#" ><img src="pages/video/万万没想到队.png" alt="image4"/></a>
					</li>
                      <li>
						<a href="#" ><img src="pages/video/火爆决战.png" alt="image5"/></a>
				</ul>

				<div id="shadow" class="shadow"></div>

				<div id="nav-arrows" class="nav-arrows">
					<a href="#">Next</a>
					<a href="#">Previous</a>
				</div>

				<div id="nav-dots" class="nav-dots">
					<span class="nav-dot-current"></span>
					<span></span>
					<span></span>
					<span></span>
                    <span></span>
				</div>
                </div>
              </div>
            </li>
            <!-- END timeline item -->
            <!-- timeline item -->
            <li>
              <i class="fa fa-video-camera bg-maroon"></i>

              <div class="timeline-item">
                  <span class="time"><i class="fa fa-clock-o"></i> 总决赛预热视频</span>
                <h3 class="timeline-header"><a href="#">小米客服渠道</a> 知识竞赛-智在必得</h3>

                <div class="timeline-body">
                  <div class="embed-responsive embed-responsive-16by9">
                   
        <video class="video" poster="pages/video/1.png" width="1024" height="768" controls preload>
			<source src="pages/video/movie.mp4" type="video/mp4" />
		</video>
                  </div>
                </div>
                <div class="timeline-footer">
                  <a href="#" class="btn btn-xs bg-maroon">小米客服渠道</a>
                </div>
              </div>
            </li>

            <li>
              <i class="fa fa-video-camera bg-maroon"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i> 这是小米客服内部一场让人万万没想到的比赛</span>

                <h3 class="timeline-header"><a href="#">小米客服渠道</a> 知识竞赛-智在必得</h3>

                <div class="timeline-body">
                  <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="http://10.237.32.10/portal/News/Detail.action?id=16" frameborder="0" allowfullscreen></iframe>
                  </div>
                </div>
                <div class="timeline-footer">
                  <a href="#" class="btn btn-xs bg-maroon">小米客服渠道</a>
                </div>
              </div>
            </li>
            <!-- END timeline item -->
          </ul>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      
      <!-- /.row -->

    </section>     
    </div>
    
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2016-2017 <a href="http://weibo.com/1728947492/profile?topnav=1&wvr=6&is_all=1" target="_blank">小米_威少</a>.</strong> 小米渠道客服部
  </footer>

    
<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
 <!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script>
        function SetCookie(Name, Value, Time) {
            var Now = new Date();
            var Exp = new Date(Now.valueOf() + Time * 60000 * 60 * 60);
            document.cookie = Name + '=' + escape(Value) + '; path=/; expires=' + Exp.toGMTString() + ';';
        }
        function exit() {
            SetCookie('login', '', 0);
            window.location.replace("http://10.233.15.36/");
        };
</script>

<script type="text/javascript" src="pages/video/js/jquery.slicebox.js"></script>
		<script type="text/javascript">
		    $(function () {

		        var Page = (function () {

		            var $navArrows = $('#nav-arrows').hide(),
						$navDots = $('#nav-dots').hide(),
						$nav = $navDots.children('span'),
						$shadow = $('#shadow').hide(),
						slicebox = $('#sb-slider').slicebox({
						    onReady: function () {

						        $navArrows.show();
						        $navDots.show();
						        $shadow.show();

						    },
						    onBeforeChange: function (pos) {

						        $nav.removeClass('nav-dot-current');
						        $nav.eq(pos).addClass('nav-dot-current');

						    }
						}),

						init = function () {

						    initEvents();

						},
						initEvents = function () {

						    // add navigation events
						    $navArrows.children(':first').on('click', function () {

						        slicebox.next();
						        return false;

						    });

						    $navArrows.children(':last').on('click', function () {

						        slicebox.previous();
						        return false;

						    });

						    $nav.each(function (i) {

						        $(this).on('click', function (event) {

						            var $dot = $(this);

						            if (!slicebox.isActive()) {

						                $nav.removeClass('nav-dot-current');
						                $dot.addClass('nav-dot-current');

						            }

						            slicebox.jump(i + 1);
						            return false;

						        });

						    });

						};

		            return { init: init };

		        })();

		        Page.init();

		    });
		</script>
		<script src="http://dreamsky.github.io/main/blog/common/init.js"></script>
    <script src="pages/vedio/html5media.min.js"></script> 
    </form>
</body>
</html>
