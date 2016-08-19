﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Nhome/MP.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="渠道客服系统.Nhome.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content">
  <div class="row">
        <!-- Left col -->
        <section class="col-lg-12 connectedSortable ui-sortable" runat="server" id="GL_sjzs">
          <!-- Custom tabs (Charts with tabs)-->
          <div class="nav-tabs-custom">
            <!-- Tabs within a box -->
            <ul class="nav nav-tabs pull-right">
              <li><a href="#SHSJHZ" id="HSHSJHZ" data-toggle="tab">数据汇总查询</a></li>
              <li class="active"><a href="#SHSJZS" id="#SHSJZS" data-toggle="tab">评价员工数据展示</a></li>
              <li class="pull-left header"><i class="fa fa-inbox"></i> 渠道评价员工数据展示</li>
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
              <table id="example2" class="table table-bordered table-hover" style="position: relative;width:100%;height:auto;white-space: nowrap; text-overflow: ellipsis;">
                <thead>
                <tr>
                    <th>日期</th>
                    <th>店铺</th>
                    <th>姓名</th>
                    <th>天猫追评</th>
                    <th>天猫首页</th>
                    <th>天猫负评</th>
                    <th>天猫分类处理量</th>
                    <th>天猫评价审核量</th>
                     <th>淘宝追评</th>
                     <th>淘宝中评</th>
                     <th>淘宝差评</th>
                    <th>淘宝退款评价</th>
                     <th>合计</th>
                    </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>日期</th>
                    <th>店铺</th>
                    <th>姓名</th>
                    <th>天猫追评</th>
                    <th>天猫首页</th>
                    <th>天猫负评</th>
                    <th>天猫分类处理量</th>
                    <th>天猫评价审核量</th>
                     <th>淘宝追评</th>
                     <th>淘宝中评</th>
                     <th>淘宝差评</th>
                    <th>淘宝退款评价</th>
                     <th>合计</th>
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
                    <th>姓名</th>
                    <th>天猫追评</th>
                    <th>天猫首页</th>
                    <th>天猫负评</th>
                    <th>天猫分类处理量</th>
                    <th>天猫评价审核量</th>
                     <th>淘宝追评</th>
                     <th>淘宝中评</th>
                     <th>淘宝差评</th>
                    <th>淘宝退款评价</th>
                    </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>姓名</th>
                    <th>天猫追评</th>
                    <th>天猫首页</th>
                    <th>天猫负评</th>
                    <th>天猫分类处理量</th>
                    <th>天猫评价审核量</th>
                     <th>淘宝追评</th>
                     <th>淘宝中评</th>
                     <th>淘宝差评</th>
                    <th>淘宝退款评价</th>
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
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <script>
         $(function () {
             $("#example2").DataTable({
                 "ajax": {
                     "type": "GET",
                     "data": { "date": "0" },
                     "url": "Ajax/PJYGdata.ashx",
                     "dataSrc": ""
                 },
                 "aLengthMenu": [[50, 100, -1], [50, 100, "All"]],
                 "scrollX": true,
                 "columns": [
                   { "data": "日期" },
                   { "data": "店铺" },
                     { "data": "姓名" },
                   { "data": "天猫追评" },
                   { "data": "天猫首页" },
                   { "data": "天猫负评" },
                   { "data": "天猫分类处理量" },
                   { "data": "天猫评价审核量" },
                   { "data": "淘宝追评" },
                    { "data": "淘宝中评" },
                     { "data": "淘宝差评" },
                      { "data": "淘宝退款评价" },
                       { "data": "合计" },
                 ],
                 fixedColumns: {
                     leftColumns: 3
                 }
             });
         });
         $(function () {
             $("#datepicker1").change(function () {
                 var date = $('#datepicker').val();
                 $('#example2').dataTable().fnDestroy();

                 $("#example2").DataTable({
                     "ajax": {
                         "type": "GET",
                         "data": { "date": date },
                         "url": "Ajax/PJYGdata.ashx",
                         "dataSrc": ""
                     },
                     "aLengthMenu": [[50, 100, -1], [50, 100, "All"]],
                     "scrollX": true,
                     "columns": [
                   { "data": "日期" },
                   { "data": "店铺" },
                      { "data": "姓名" },
                   { "data": "天猫追评" },
                   { "data": "天猫首页" },
                   { "data": "天猫负评" },
                   { "data": "天猫分类处理量" },
                   { "data": "天猫评价审核量" },
                   { "data": "淘宝追评" },
                    { "data": "淘宝中评" },
                     { "data": "淘宝差评" },
                      { "data": "淘宝退款评价" },
                       { "data": "合计" },
                     ],
                     fixedColumns: {
                         leftColumns: 3
                     }
                 });
             });
         });
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
             $("#HSHSJHZ").click(function () {
                 $('#example').dataTable().fnDestroy();
                 $("#example").DataTable({
                     "ajax": {
                         "type": "GET",
                         "data": { "date1": "0", "date2": "0" },
                         "url": "Ajax/PJYGdataHZ.ashx",
                         "dataSrc": ""
                     },
                     "scrollX": true,
                     "aaSorting": [
                                  [1, "asc"]
                     ],
                     "columns": [
                    { "data": "姓名" },
                   { "data": "天猫追评" },
                   { "data": "天猫首页" },
                   { "data": "天猫负评" },
                   { "data": "天猫分类处理量" },
                   { "data": "天猫评价审核量" },
                   { "data": "淘宝追评" },
                    { "data": "淘宝中评" },
                     { "data": "淘宝差评" },
                      { "data": "淘宝退款评价" },
                     ],
                     fixedColumns: {
                         leftColumns: 1
                     }
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
                         "data": { "date1": date1, "date2": date2 },
                         "url": "Ajax/PJYGdataHZ.ashx",
                         "dataSrc": ""
                     },
                     "aaSorting": [
              [1, "asc"]
                     ],
                     "scrollX": true,
                     "columns": [
                      { "data": "姓名" },
                   { "data": "天猫追评" },
                   { "data": "天猫首页" },
                   { "data": "天猫负评" },
                   { "data": "天猫分类处理量" },
                   { "data": "天猫评价审核量" },
                   { "data": "淘宝追评" },
                    { "data": "淘宝中评" },
                     { "data": "淘宝差评" },
                      { "data": "淘宝退款评价" },
                     ],
                     fixedColumns: {
                         leftColumns: 1
                     }
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

</asp:Content>
