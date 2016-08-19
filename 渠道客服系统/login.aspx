<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="渠道客服系统.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=8"/>
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>
<meta http-equiv="Cache-control" content="no-cache"/>
<meta http-equiv="Cache" content="no-cache"/>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <title>渠道客服信息系统-登录</title>
            <!-- 
        Visual Admin Template
        http://www.templatemo.com/preview/templatemo_455_visual_admin
        -->
	    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'/>
	    <link href="css/font-awesome.min.css" rel="stylesheet"/>
	    <link href="css/bootstrap.min.css" rel="stylesheet"/>
	    <link href="css/templatemo-style.css" rel="stylesheet"/>
          <!-- Font Awesome -->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"/>
          <!-- Ionicons -->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"/>
          <!-- Theme style -->
          <link rel="stylesheet" href="Nhome/dist/css/AdminLTE.min.css"/>
          <!-- iCheck -->
          <link rel="stylesheet" href="Nhome/plugins/iCheck/square/blue.css"/>
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
<style>
</style>

</head>
<body class="hold-transition light-gray-bg">
    <form id="form1" runat="server" class="templatemo-login-form">
<div class="login-box">
  <div class="login-logo">
     <div>
                  <asp:Image  ID="Image1" runat="server" ImageUrl="~/Images/mi_logo.jpg" Height="50px" Width="50px" /></div>
      <div><br /></div>
	          <h1>渠道客服信息系统</h1>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">欢迎使用渠道客服信息系统</p>

      <div class="form-group has-feedback">
        <asp:textbox runat="server" id="uid" type="text" class="form-control" placeholder="米聊号"/>  
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        	<asp:textbox runat="server" ID="psw" type="password" class="form-control" placeholder="密码"/> 
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
                
            <label>
                <input id="cbox" runat="server" type="checkbox"/>
             两周内自动登录
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <asp:button runat="server" ID="btn_login" type="submit" Text="立即登录" class="btn btn-primary btn-block btn-flat" OnClick="btn_login_Click"></asp:button>
        </div>
        <!-- /.col -->
      </div>
      		<div class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
			<p>永远相信美好的事情 <strong><a href="#" class="blue-text">即将发生!</a></strong></p>
		</div>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
   </form>
<!-- jQuery 2.2.0 -->
<script src="Nhome/plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="Nhome/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="Nhome/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
</html>
