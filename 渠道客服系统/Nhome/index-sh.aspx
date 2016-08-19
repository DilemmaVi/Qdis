<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index-sh.aspx.cs" Inherits="渠道客服系统.Nhome.index_sh" %>

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
    <link rel="stylesheet" href="https://cdn.datatables.net/fixedcolumns/3.2.2/css/fixedColumns.dataTables.min.css"/>
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css"/>
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css"/>
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css"/>

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

    <!--
a:link {
text-decoration: none;
}
a:visited {
text-decoration: none;
}
a:hover {
text-decoration: none;
}
a:active {
text-decoration: none;
}
-->
  </style>
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
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>数据展示</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> 售前数据</a></li>
            <li class="active"><a href="index-sh.aspx"><i class="fa fa-circle-o"></i> 售后数据</a></li>
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
          <a href="/Nhome/suggest.aspx">
            <i class="fa fa-calendar"></i> <span>建议反馈</span>
          </a>
        </li>
        <li><a href="#"><i class="fa fa-book"></i> <span>部门文档</span></a></li>
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
        <li class="active">index-sh</li>
      </ol>
    </section>
      <section class="content">
  <div class="row">
        <!-- Left col -->
        <section class="col-lg-12 connectedSortable ui-sortable" runat="server" id="GL_sjzs">
          <!-- Custom tabs (Charts with tabs)-->
          <div class="nav-tabs-custom">
            <!-- Tabs within a box -->
            <ul class="nav nav-tabs pull-right">
              <li><a href="#SHSJHZ" id="HSHSJHZ" data-toggle="tab">数据汇总查询</a></li>
              <li class="active"><a href="#SHSJZS" id="#SHSJZS" data-toggle="tab">渠道员工数据展示</a></li>
              <li class="pull-left header"><i class="fa fa-inbox"></i> 渠道售后员工数据展示</li>
            </ul>
            <div class="tab-content no-padding">
              <!-- Morris chart - Sales -->
              <div class="tab-pane active" id="SHSJZS" style="position: relative;width:100%;height:auto">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <div class="col-sm-2">
                         <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" class="form-control pull-right" id="datepicker1"/>
                    </div>
                        </div>
                    </div>
                <label><br /></label>
              <table id="example3" class="table table-bordered table-hover" style="position: relative;width:100%;height:auto;white-space: nowrap; text-overflow: ellipsis;">
                <thead>
                <tr>
                    <th>日期</th>
                    <th>员工姓名</th>
                    <th>组别</th>
                    <th>售前审单</th>
                    <th>退款管理</th>
                    <th>法政先锋</th>
                    <th>AACC工单</th>
                    <th>物流（事务/客建）</th>
                    <th>物流（承运商）</th>
                    <th>大家电事务</th>
                    <th>大家电异常</th>
                    <th>大家电退款</th>
                    <th>外呼确认</th>
                    <th>收货交接</th>
                    <th>特例</th>
                    <th>汇总</th>
                    <th>备注</th>
                    </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>日期</th>
                    <th>员工姓名</th>
                    <th>组别</th>
                    <th>售前审单</th>
                    <th>退款管理</th>
                    <th>法政先锋</th>
                    <th>AACC工单</th>
                    <th>物流（事务/客建）</th>
                    <th>物流（承运商）</th>
                    <th>大家电事务</th>
                    <th>大家电异常</th>
                    <th>大家电退款</th>
                    <th>外呼确认</th>
                    <th>收货交接</th>
                    <th>特例</th>
                    <th>汇总</th>
                    <th>备注</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

 </div>          
        <div class="tab-pane" id="SHSJHZ"  style="position: relative;width:100%;height:auto">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <div class="col-sm-2">
                         <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" class="form-control pull-right" placeholder="开始时间"  id="datepicker_start"/>
                       <input type="text" class="form-control pull-right" placeholder="结束时间" id="datepicker_end"/>
                    </div>
                        </div>
                    </div>
                <label><br /></label>
              <table id="example" class="table table-bordered table-hover" style="position: relative;width:100%;height:auto;white-space: nowrap; text-overflow: ellipsis;">
                <thead>
                <tr>
                    <th>员工姓名</th>
                    <th>组别</th>
                    <th>售前审单</th>
                    <th>退款管理</th>
                    <th>法政先锋</th>
                    <th>AACC工单</th>
                    <th>物流（事务/客建）</th>
                    <th>物流（承运商）</th>
                    <th>大家电事务</th>
                    <th>大家电异常</th>
                    <th>大家电退款</th>
                    <th>外呼确认</th>
                    <th>收货交接</th>
                    <th>特例</th>
                    </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>员工姓名</th>
                    <th>组别</th>
                    <th>售前审单</th>
                    <th>退款管理</th>
                    <th>法政先锋</th>
                    <th>AACC工单</th>
                    <th>物流（事务/客建）</th>
                    <th>物流（承运商）</th>
                    <th>大家电事务</th>
                    <th>大家电异常</th>
                    <th>大家电退款</th>
                    <th>外呼确认</th>
                    <th>收货交接</th>
                    <th>特例</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          </div>
                </div>
          </div>
          <!-- /.nav-tabs-custom -->
        </section>
        <!-- right col -->
      </div>
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
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/fixedcolumns/3.2.2/js/dataTables.fixedColumns.min.js"></script>
<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="pages/tables/dathh.js"></script>
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- page script -->
    <script>
        $(function () {

            //Date picker
            $('#datepicker1').datepicker({
                format: 'yyyy/m/d',
                autoclose: true
            });
        });

        $(function () {

            //Date picker
            $('#datepicker_start').datepicker({
                format: 'yyyy/m/d',
                autoclose: true
            });
        });

        $(function () {

            //Date picker
            $('#datepicker_end').datepicker({
                format: 'yyyy/m/d',
                autoclose: true
            });
        });


        $(function () {
            $("#example3").DataTable({
                "ajax": {
                    "type": "GET",
                    "data": { "date": "0" },
                    "url": "Ajax/SHYGdata.ashx",
                    "dataSrc": ""
                },
                "aLengthMenu": [[50, 100, -1], [50, 100, "All"]],
                "scrollX": true,
                "columns": [
                  { "data": "日期" },
                  { "data": "员工姓名" },
                  { "data": "组别" },
                  { "data": "售前审单" },
                  { "data": "退款管理" },
                  { "data": "法政先锋" },
                  { "data": "AACC工单" },
                  { "data": "物流异常（事务/客建）" },
                  { "data": "物流异常（承运商）" },
                  { "data": "大家电（事务）" },
                  { "data": "大家电（异常）" },
                  { "data": "大家电（退款）" },
                  { "data": "外呼确认" },
                  { "data": "收货交接" },
                  { "data": "特例" },
                  { "data": "汇总" },
                  { "data": "备注" },
                ],
            });
        });//售后员工数据日展示
        $(function () {
            $("#datepicker1").change(function () {
                var date = $('#datepicker1').val();
                $('#example3').dataTable().fnDestroy();

                $("#example3").DataTable({
                    "ajax": {
                        "type": "GET",
                        "data": { "date": date },
                        "url": "Ajax/SHYGdata.ashx",
                        "dataSrc": ""
                    },
                    "aLengthMenu": [[50, 100, -1], [50, 100, "All"]],
                    "scrollX": true,
                    "columns": [
                      { "data": "日期" },
                      { "data": "员工姓名" },
                      { "data": "组别" },
                      { "data": "售前审单" },
                      { "data": "退款管理" },
                      { "data": "法政先锋" },
                      { "data": "AACC工单" },
                      { "data": "物流异常（事务/客建）" },
                      { "data": "物流异常（承运商）" },
                      { "data": "大家电（事务）" },
                      { "data": "大家电（异常）" },
                      { "data": "大家电（退款）" },
                      { "data": "外呼确认" },
                      { "data": "收货交接" },
                      { "data": "特例" },
                      { "data": "汇总" },
                      { "data": "备注" },
                    ],
                });
            });
        });//售后员工数据日展示
        $(function () {
            $("#HSHSJHZ").click(function () {
                $('#example').dataTable().fnDestroy();
                $("#example").DataTable({
                    "ajax": {
                        "type": "GET",
                        "data": { "date1": "0", "date2": "0" },
                        "url": "Ajax/SHYGdataHZ.ashx",
                        "dataSrc": ""
                    },
                    "scrollX": true,
                    "aaSorting": [
                                 [2, "asc"]
                    ],
                    "columns": [
                      { "data": "员工姓名" },
                      { "data": "组别" },
                      { "data": "售前审单" },
                      { "data": "退款管理" },
                      { "data": "法政先锋" },
                      { "data": "AACC工单" },
                      { "data": "物流异常（事务/客建）" },
                      { "data": "物流异常（承运商）" },
                      { "data": "大家电（事务）" },
                      { "data": "大家电（异常）" },
                      { "data": "大家电（退款）" },
                      { "data": "外呼确认" },
                      { "data": "收货交接" },
                      { "data": "特例" },
                    ],
                });
            });
        });//数据汇总展示
        $(function () {
            $("#datepicker_end").change(function () {
                var date1 = $('#datepicker_start').val();
                var date2 = $('#datepicker_end').val();
                $('#example').dataTable().fnDestroy();

                $("#example").DataTable({
                    "ajax": {
                        "type": "GET",
                        "data": { "date1": date1,"date2":date2 },
                        "url": "Ajax/SHYGdataHZ.ashx",
                        "dataSrc": ""
                    },
                    "aaSorting": [
             [2, "asc"]
                    ],
                    "scrollX": true,
                    "columns": [
                      { "data": "员工姓名" },
                      { "data": "组别" },
                      { "data": "售前审单" },
                      { "data": "退款管理" },
                      { "data": "法政先锋" },
                      { "data": "AACC工单" },
                      { "data": "物流异常（事务/客建）" },
                      { "data": "物流异常（承运商）" },
                      { "data": "大家电（事务）" },
                      { "data": "大家电（异常）" },
                      { "data": "大家电（退款）" },
                      { "data": "外呼确认" },
                      { "data": "收货交接" },
                      { "data": "特例" },
                    ],
                });
            });
        });//数据汇总展示选取时间段
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
    </form>
</body>
</html>