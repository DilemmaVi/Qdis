<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="渠道客服系统.Nhome.index" %>

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
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css"/>
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css"/>
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css"/>
  <!-- Morris chart -->
  <link rel="stylesheet" href="plugins/morris/morris.css"/>
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css"/>
  <!-- Date Picker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css"/>
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css"/>
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
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
        <li id="MyHome" class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>我的首页</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="/Nhome/index.aspx"><i class="fa fa-circle-o"></i> 个人信息</a></li>
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
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>团队风采</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> 漂亮美眉</a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> 阳光帅哥</a></li>
            <li><a href="team.aspx"><i class="fa fa-circle-o"></i> 团建活动</a></li>
          </ul>
        </li>
        <li>
          <a href="suggest.aspx">
            <i class="fa fa-calendar"></i> <span>意见反馈</span>
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
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        您好！
        <small><asp:Label runat="server" ID="Nlab2" /></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">information</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        </div>

         <div id="sbox" style="float:left;width:350px" runat="server">
             <a>请选择：</a>
             <asp:DropDownList ID="DDL_zg" runat="server" ></asp:DropDownList>
             <asp:DropDownList ID="DDL_zz" runat="server" ></asp:DropDownList>
             <asp:DropDownList ID="DDL_yg" runat="server" ></asp:DropDownList>
             </div>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:button tyle="float:left" runat="server" OnClick="cxbtn_Click" Text="查询" id="cxbtn" type="button" class="btn-success"></asp:button>          
                
        <div style="float:right"><p id="gxsj" class="text-green" runat="server">数据更新时间：2016/5/30 12:15:37</p></div> 

        <div class="row"></div>
      <div class="row">
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
            <h3><asp:Label runat="server" ID="Jdl" Text=""></asp:Label></h3>
              <p>本绩效月 累计接待人数</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a class="small-box-footer"> <asp:Label ID="Jdljz" runat="server" Text="团队均值：500"></asp:Label></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><asp:Label ID="CPH" runat="server"></asp:Label></h3>

              <p>本绩效月 CPH平均值</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a class="small-box-footer">
                <asp:Label ID="CPHjz" runat="server" Text="团队均值：22"></asp:Label></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><asp:Label ID="ZHL" runat="server"></asp:Label></h3>

              <p>本绩效月 转化率平均值</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a class="small-box-footer"><asp:Label ID="Zhljz" runat="server" Text="团队均值：22%"></asp:Label> </a>
          </div>
        </div>
        <!-- ./col -->
         <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><asp:Label ID="SCXY" runat="server"></asp:Label></h3>

              <p>本绩效月 首次响应时长</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a class="small-box-footer"><asp:Label ID="FirstXY" runat="server" Text="团队均值：160s"></asp:Label></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><asp:Label ID="PJXY" runat="server"></asp:Label></h3>

              <p>本绩效月 平均响应时长</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a class="small-box-footer"><asp:Label ID="AVGXY" runat="server" Text="团队均值：160s"></asp:Label></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><asp:Label ID="PJJD" runat="server"></asp:Label></h3>

              <p>本绩效月 平均接待时长</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a class="small-box-footer"><asp:Label ID="AVGjd" runat="server" Text="团队均值：160s"></asp:Label></a>
          </div>
        </div>    
        <!-- ./col -->
      </div>
   </ContentTemplate>
   </asp:UpdatePanel>
      <!-- /.row -->
      <!-- Main row -->
              <div class="row">
        <!-- Left col -->
        <section class="col-lg-12 connectedSortable ui-sortable" >
          <!-- Custom tabs (Charts with tabs)-->
          <div class="nav-tabs-custom" >
            <!-- Tabs within a box -->
            <ul class="nav nav-tabs pull-right">
              <li class="active"><a href="#TDMychart" id="TDchartJD" data-toggle="tab">接待人数</a></li>
              <li><a href="#TDMychart1" id="TDchartCPH" data-toggle="tab">CPH</a></li>
                <li><a href="#TDMychart2" id="TDchartZHL" data-toggle="tab">转化率</a></li>
                <li><a href="#TDMychart3" id="TDchartFXY" data-toggle="tab">首次响应时长</a></li>
                <li><a href="#TDMychart4" id="TDchartAXY" data-toggle="tab">平均响应时长</a></li>
                <li><a href="#TDMychart5" id="TDchartAJD" data-toggle="tab">平均接待时长</a></li>
              <li class="pull-left header"><i class="fa fa-inbox"></i>售前各组数据对比</li>
            </ul>
            <div class="tab-content no-padding">
              <!-- Morris chart - Sales -->
              <div class="tab-pane active" id="TDMychart" style="position: relative; width:100%;height:400px;"></div>
                 <div id="TDMychart1" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="TDMychart2" class="tab-pane" style="position: relative;  width:800px;height:400px;"></div>
                <div id="TDMychart3" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="TDMychart4" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="TDMychart5" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
            </div>
          </div>
          <!-- /.nav-tabs-custom -->
        </section>
        <!-- right col -->
      </div>
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-12 connectedSortable ui-sortable" runat="server" id="tdyc">
          <!-- Custom tabs (Charts with tabs)-->
          <div class="nav-tabs-custom">
            <!-- Tabs within a box -->
            <ul class="nav nav-tabs pull-right">
              <li class="active"><a href="#Mychart" id="chartJD" data-toggle="tab">接待人数</a></li>
              <li><a href="#Mychart1" id="chartCPH" data-toggle="tab">CPH</a></li>
                <li><a href="#Mychart2" id="chartZHL" data-toggle="tab">转化率</a></li>
                <li><a href="#Mychart3" id="chartFXY" data-toggle="tab">首次响应时长</a></li>
                <li><a href="#Mychart4" id="chartAXY" data-toggle="tab">平均响应时长</a></li>
                <li><a href="#Mychart5" id="chartAJD" data-toggle="tab">平均接待时长</a></li>
              <li class="pull-left header"><i class="fa fa-inbox"></i> 近30天数据展示</li>
            </ul>
            <div class="tab-content no-padding">
              <!-- Morris chart - Sales -->
              <div class="tab-pane active" id="Mychart" style="position: relative; width:100%;height:400px;"></div>
                 <div id="Mychart1" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="Mychart2" class="tab-pane" style="position: relative;  width:800px;height:400px;"></div>
                <div id="Mychart3" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="Mychart4" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="Mychart5" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
            </div>
          </div>
          <!-- /.nav-tabs-custom -->
        </section>
        <!-- right col -->
      </div>
      <!-- /.row (main row) -->
        <div class="row">
        <!-- Left col -->
        <section class="col-lg-12 connectedSortable ui-sortable" runat="server" id="GL_sjzs">
          <!-- Custom tabs (Charts with tabs)-->
          <div class="nav-tabs-custom">
            <!-- Tabs within a box -->
            <ul class="nav nav-tabs pull-right">
              <li class="active"><a href="#HMychart" id="HchartJD" data-toggle="tab">接待人数</a></li>
              <li><a href="#HMychart1" id="HchartCPH" data-toggle="tab">CPH</a></li>
                <li><a href="#HMychart2" id="HchartZHL" data-toggle="tab">转化率</a></li>
                <li><a href="#HMychart3" id="HchartFXY" data-toggle="tab">首次响应时长</a></li>
                <li><a href="#HMychart4" id="HchartAXY" data-toggle="tab">平均响应时长</a></li>
                <li><a href="#HMychart5" id="HchartAJD" data-toggle="tab">平均接待时长</a></li>
              <li class="pull-left header"><i class="fa fa-inbox"></i> 近30天数据展示</li>
            </ul>
            <div class="tab-content no-padding">
              <!-- Morris chart - Sales -->
              <div class="tab-pane active" id="HMychart" style="position: relative; width:100%;height:400px;"></div>
                 <div id="HMychart1" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="HMychart2" class="tab-pane" style="position: relative;  width:800px;height:400px;"></div>
                <div id="HMychart3" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="HMychart4" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
                <div id="HMychart5" class="tab-pane" style="position: relative; width:800px;height:400px;"></div>
            </div>
          </div>
          <!-- /.nav-tabs-custom -->
        </section>
        <!-- right col -->
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2016-2017 <a href="http://weibo.com/1728947492/profile?topnav=1&wvr=6&is_all=1" target="_blank">小米_威少</a>.</strong> 小米渠道客服部
  </footer>

    
<!-- ./wrapper -->
     <!-- 引入 ECharts 文件 -->
 <script type="text/javascript" src="plugins/chartjs/echarts.js"></script>
 <script type="text/javascript" src="plugins/jQuery/chartjs.js"></script>
 <!--jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jQueryUI/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
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
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/knob/jquery.knob.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
    </form>
</body>
</html>
