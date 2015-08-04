<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmationPre.aspx.cs" Inherits="FlyingSnow.Web.Pages.Export.ConfirmationPre" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas">
            <section class="sidebar">
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="img/avatar3.png" class="img-circle" alt="User Image" />
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
                    <li class="active">
                        <a href="index.html">
                            <i class="fa fa-dashboard"></i><span>仪表盘</span>
                        </a>
                    </li>
                    <li>
                        <a href="pages/widgets.html">
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
                            <li><a href="pages/charts/morris.html"><i class="fa fa-angle-double-right"></i>Morris</a></li>
                            <li><a href="pages/charts/flot.html"><i class="fa fa-angle-double-right"></i>Flot</a></li>
                            <li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i>Inline charts</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-laptop"></i>
                            <span>UI Elements</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="pages/UI/general.html"><i class="fa fa-angle-double-right"></i>General</a></li>
                            <li><a href="pages/UI/icons.html"><i class="fa fa-angle-double-right"></i>Icons</a></li>
                            <li><a href="pages/UI/buttons.html"><i class="fa fa-angle-double-right"></i>Buttons</a></li>
                            <li><a href="pages/UI/sliders.html"><i class="fa fa-angle-double-right"></i>Sliders</a></li>
                            <li><a href="pages/UI/timeline.html"><i class="fa fa-angle-double-right"></i>Timeline</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-edit"></i><span>表单</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="/Pages/Forms/AgencyForm.aspx"><i class="fa fa-angle-double-right"></i>旅行社表单</a></li>
                            <li><a href="/Pages/Forms/TravelItemForm.aspx"><i class="fa fa-angle-double-right"></i>订单表单</a></li>
                            <li><a href="pages/forms/editors.html"><i class="fa fa-angle-double-right"></i>Editors</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-table"></i><span>Tables</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="pages/tables/simple.html"><i class="fa fa-angle-double-right"></i>Simple tables</a></li>
                            <li><a href="pages/tables/data.html"><i class="fa fa-angle-double-right"></i>Data tables</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="pages/calendar.html">
                            <i class="fa fa-calendar"></i><span>Calendar</span>
                            <small class="badge pull-right bg-red">3</small>
                        </a>
                    </li>
                    <li>
                        <a href="pages/mailbox.html">
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
                            <li><a href="pages/examples/invoice.html"><i class="fa fa-angle-double-right"></i>Invoice</a></li>
                            <li><a href="pages/examples/login.html"><i class="fa fa-angle-double-right"></i>Login</a></li>
                            <li><a href="pages/examples/register.html"><i class="fa fa-angle-double-right"></i>Register</a></li>
                            <li><a href="pages/examples/lockscreen.html"><i class="fa fa-angle-double-right"></i>Lockscreen</a></li>
                            <li><a href="pages/examples/404.html"><i class="fa fa-angle-double-right"></i>404 Error</a></li>
                            <li><a href="pages/examples/500.html"><i class="fa fa-angle-double-right"></i>500 Error</a></li>
                            <li><a href="pages/examples/blank.html"><i class="fa fa-angle-double-right"></i>Blank Page</a></li>
                        </ul>
                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <section class="content-header">
                <h1>确认书
                    <small>预览</small>
                </h1>
            </section>
            <section class="content">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">确认书</h3>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box box-success">
                                <div class="box-header">
                                    <h4 class="box-title">组团社</h4>
                                </div>
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="ui_agencyName">名称</label>
                                        <input type="text" class="form-control" id="ui_agencyName" placeholder="旅行社名称">
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
                                        <label for="ui_agencyFax">传真</label>
                                        <input type="text" class="form-control" id="ui_agencyFax" placeholder="旅行社传真">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box box-danger">
                                <div class="box-header">
                                    <h4 class="box-title">地接社</h4>
                                </div>
                                <div class="box-body">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </aside>
    </div>
    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../js/AdminLTE/app.js" type="text/javascript"></script>
</asp:Content>
