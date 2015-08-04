<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TravelItemForm.aspx.cs" Inherits="FlyingSnow.Web.Pages.Forms.TravelItemForm" %>

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
                        <a href="../../index.html">
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
                            <li><a href="/Pages/Forms/AgencyForm.aspx"><i class="fa fa-angle-double-right"></i>旅行社表单</a></li>
                            <li class="active"><a href="/Pages/Forms/TravelItemForm.aspx"><i class="fa fa-angle-double-right"></i>订单表单</a></li>
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
            <!-- /.sidebar -->
        </aside>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <section class="content-header">
                <h1>订单表单
                    <small>预览</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/Default"><i class="fa fa-dashboard"></i>主页</a></li>
                    <li><a href="#">表单</a></li>
                    <li class="active">订单表单</li>
                </ol>
            </section>
            <section class="content">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">订单</h3>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box box-default">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="ui_customerName">客人姓名</label>
                                        <input type="text" class="form-control" id="ui_customerName" placeholder="旅行社名称">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_customerName1">客人电话</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-phone"></i>
                                            </div>
                                            <input type="text" class="form-control" id="ui_customerPhone1" data-inputmask='"mask": "999-9999-9999"' data-mask />
                                        </div>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-phone"></i>
                                            </div>
                                            <input type="text" class="form-control" id="ui_customerPhone2" data-inputmask='"mask": "999-9999-9999"' data-mask />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_travelDate">出发日期</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control" id="ui_travelDate" data-inputmask="'alias': 'yyyy/mm/dd'" data-mask />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_tourRoute">出发线路</label>
                                        <input type="text" class="form-control" id="ui_tourRoute" placeholder="出发路线">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="ui_adultPrice">成人价格</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-cny"></i>
                                                </div>
                                                <input type="text" class="form-control" id="ui_adultPrice" placeholder="成人价格" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="ui_adultCount">成人人数</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <input type="text" class="form-control" id="ui_adultCount" placeholder="成人人数" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="ui_childPrice">儿童价格</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-cny"></i>
                                                </div>
                                                <input type="text" class="form-control" id="ui_childPrice" placeholder="儿童价格" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="ui_childCount">儿童人数</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <input type="text" class="form-control" id="ui_childCount" placeholder="儿童人数" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_earnestOther">其他</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-cny"></i></span>
                                            <input type="text" class="form-control" id="ui_earnestOther" placeholder="其他">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_earnestOtherDes">其他说明</label>
                                        <input type="text" class="form-control" id="ui_earnestOtherDes" placeholder="其他说明">
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_earnestTotal">总价</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-cny"></i></span>
                                            <input type="text" class="form-control" id="ui_earnestTotal" placeholder="总价">
                                            <span id="ui_earnestSubtotal" class="input-group-addon"><i class="fa fa-rotate-right"></i></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="ui_insteadReceive">代收金额</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-cny"></i></span>
                                            <input type="text" class="form-control" id="ui_insteadReceive" placeholder="代收金额">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box box-danger">
                                <div class="box-header">
                                    <h6 class="box-title">登记信息</h6>
                                </div>
                                <div class="box-body" id="ui_customsBox" count="1">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                            <input type="text" class="form-control" id="ui_customerName0" placeholder="客人姓名" />
                                            <div class="input-group-addon"><i class="fa fa-credit-card"></i></div>
                                            <input type="text" class="form-control" id="ui_customerIdCard0" placeholder="身份证" />
                                        </div>
                                    </div>
                                </div>
                                <div class="box-footer">
                                    <button type="submit" class="btn btn-primary" id="ui_addRegistInfo">添加</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box box-default">
                                <div class="box-header">
                                    <h4 class="box-title">组团社</h4>
                                </div>
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="ui_agencyInput">组团社</label>
                                        <div class="input-group">
                                            <input type="text" id="ui_agencyInput" name="q" class="form-control" placeholder="搜索..." />
                                            <span class="input-group-btn">
                                                <button type='submit' name='seach' id='ui_agencyBtn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <%-- insert agency information --%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box box-default">
                                <div class="box-header">
                                    <h4 class="box-title">地接社</h4>
                                </div>
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="ui_operatorInput">地接社</label>
                                        <div class="input-group">
                                            <input type="text" id="ui_operatorInput" name="q" class="form-control" placeholder="搜索..." />
                                            <span class="input-group-btn">
                                                <button type='submit' name='seach' id='ui_operatorBtn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <%-- insert agency information --%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box box-default">
                        <div class="box-header">
                            <h3 class="box-title">去时</h3>
                        </div>
                    </div>
                </div>
            </section>
        </aside>
    </div>
    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../js/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="../../js/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="../../js/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <script src="../../js/AdminLTE/app.js" type="text/javascript"></script>
    <script src="../../js/jquery.signalR-2.2.0.min.js"></script>
    <script src="/signalr/hubs"></script>
    <script src="../../js/SignalR/SignalRAgency.js"></script>
    <script src="../../js/Pages/Page.TravelItemForm.js" type="text/javascript"></script>
</asp:Content>
