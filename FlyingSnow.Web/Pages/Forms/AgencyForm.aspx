<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyForm.aspx.cs" Inherits="FlyingSnow.Web.Pages.Forms.AgencyForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas">
            <section class="sidebar">
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="../../img/avatar3.png" class="img-circle" alt="User Image" />
                    </div>
                    <div class="pull-left info">
                        <p>Hello, Jane</p>
                        <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                    </div>
                </div>
                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Search..." />
                        <span class="input-group-btn">
                            <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </form>
                <ul class="sidebar-menu">
                    <li>
                        <a href="/Default.aspx">
                            <i class="fa fa-dashboard"></i><span>仪表盘</span>
                        </a>
                    </li>
                    <li>
                        <a href="../widgets.html">
                            <i class="fa fa-th"></i><span>Widgets</span> <small class="badge pull-right bg-green">new</small>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-bar-chart-o"></i>
                            <span>Charts</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="../charts/morris.html"><i class="fa fa-angle-double-right"></i>Morris</a></li>
                            <li><a href="../charts/flot.html"><i class="fa fa-angle-double-right"></i>Flot</a></li>
                            <li><a href="../charts/inline.html"><i class="fa fa-angle-double-right"></i>Inline charts</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-laptop"></i>
                            <span>UI Elements</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="../UI/general.html"><i class="fa fa-angle-double-right"></i>General</a></li>
                            <li><a href="../UI/icons.html"><i class="fa fa-angle-double-right"></i>Icons</a></li>
                            <li><a href="../UI/buttons.html"><i class="fa fa-angle-double-right"></i>Buttons</a></li>
                            <li><a href="../UI/sliders.html"><i class="fa fa-angle-double-right"></i>Sliders</a></li>
                            <li><a href="../UI/timeline.html"><i class="fa fa-angle-double-right"></i>Timeline</a></li>
                        </ul>
                    </li>
                    <li class="treeview active">
                        <a href="#">
                            <i class="fa fa-edit"></i><span>表单</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li class="active"><a href="/Pages/Forms/AgencyForm.aspx"><i class="fa fa-angle-double-right"></i>旅行社表单</a></li>
                            <li><a href="/Pages/Forms/TravelItemForm.aspx"><i class="fa fa-angle-double-right"></i>订单表单</a></li>
                            <li><a href="editors.html"><i class="fa fa-angle-double-right"></i>Editors</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-table"></i><span>Tables</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="../tables/simple.html"><i class="fa fa-angle-double-right"></i>Simple tables</a></li>
                            <li><a href="../tables/data.html"><i class="fa fa-angle-double-right"></i>Data tables</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="../calendar.html">
                            <i class="fa fa-calendar"></i><span>Calendar</span>
                            <small class="badge pull-right bg-red">3</small>
                        </a>
                    </li>
                    <li>
                        <a href="../mailbox.html">
                            <i class="fa fa-envelope"></i><span>Mailbox</span>
                            <small class="badge pull-right bg-yellow">12</small>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-folder"></i><span>Examples</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="../examples/invoice.html"><i class="fa fa-angle-double-right"></i>Invoice</a></li>
                            <li><a href="../examples/login.html"><i class="fa fa-angle-double-right"></i>Login</a></li>
                            <li><a href="../examples/register.html"><i class="fa fa-angle-double-right"></i>Register</a></li>
                            <li><a href="../examples/lockscreen.html"><i class="fa fa-angle-double-right"></i>Lockscreen</a></li>
                            <li><a href="../examples/404.html"><i class="fa fa-angle-double-right"></i>404 Error</a></li>
                            <li><a href="../examples/500.html"><i class="fa fa-angle-double-right"></i>500 Error</a></li>
                            <li><a href="../examples/blank.html"><i class="fa fa-angle-double-right"></i>Blank Page</a></li>
                        </ul>
                    </li>
                </ul>
            </section>
        </aside>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>旅行社表单
                    <small>预览</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/Default"><i class="fa fa-dashboard"></i>主页</a></li>
                    <li><a href="#">表单</a></li>
                    <li class="active">旅行社表单</li>
                </ol>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-6">
                        <!-- general form elements -->
                        <div class="box box-primary">
                            <div class="box-header">
                                <h3 class="box-title">旅行社</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <form role="form">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="ui_agencyName">名称</label>
                                        <input type="text" class="form-control" id="ui_agencyName" placeholder="旅行社名称">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_agencyCode">代码</label>
                                        <input type="text" class="form-control" id="ui_agencyCode" placeholder="代码（编号）">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_agencyPrincipal">确认人</label>
                                        <input type="text" class="form-control" id="ui_agencyPrincipal" placeholder="旅行社确认人">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_agencyPrincipalPhone">负责人电话</label>
                                        <input type="text" class="form-control" id="ui_agencyPrincipalPhone" placeholder="负责人电话">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_agencyFinancePhone">财务电话</label>
                                        <input type="text" class="form-control" id="ui_agencyFinancePhone" placeholder="财务电话">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_agencyFax">传真</label>
                                        <input type="text" class="form-control" id="ui_agencyFax" placeholder="旅行社传真">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_agencyAddress">地址</label>
                                        <input type="text" class="form-control" id="ui_agencyAddress" placeholder="旅行社地址">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_agencyContactQQ1">QQ</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            <input type="text" class="form-control input-sm" id="ui_agencyContactU1" placeholder="联系人">
                                            <span class="input-group-addon"><i class="fa fa-comments"></i></span>
                                            <input type="text" class="form-control input-sm" id="ui_agencyContactQQ1" placeholder="QQ 1">
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            <input type="text" class="form-control input-sm" id="ui_agencyContactU2" placeholder="联系人">
                                            <span class="input-group-addon"><i class="fa fa-comments"></i></span>
                                            <input type="text" class="form-control input-sm" id="ui_agencyContactQQ2" placeholder="QQ 2">
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            <input type="text" class="form-control input-sm" id="ui_agencyContactU3" placeholder="联系人">
                                            <span class="input-group-addon"><i class="fa fa-comments"></i></span>
                                            <input type="text" class="form-control input-sm" id="ui_agencyContactQQ3" placeholder="QQ 3">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="box box-warning">
                            <div class="box-header">
                                <h3 class="box-title">备注</h3>
                            </div>
                            <div class="box-body">
                                <form role="form">
                                    <div class="form-group">
                                        <label>内容</label>
                                        <textarea id="ui_note" class="form-control" rows="3" placeholder="输入 ..."></textarea>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <button id="ui_agencyButton" type="button" class="btn btn-primary">提交</button>
                </div>
            </section>
        </aside>
    </div>
    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../js/AdminLTE/app.js" type="text/javascript"></script>
    <script src="../../js/jquery.signalR-2.2.0.min.js"></script>
    <script src="/signalr/hubs"></script>
    <script src="../../js/SignalR/SignalRAgency.js"></script>
    <script src="../../js/common.js"></script>
    <script src="../../js/Pages/Page.AgencyForm.js"></script>
</asp:Content>
