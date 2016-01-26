<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TravelItemsTable.aspx.cs" Inherits="FlyingSnow.Web.Pages.Table.TravelItemsTable" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="left-side sidebar-offcanvas">
            <section class="sidebar">
                <!-- Sidebar user panel -->
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
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-edit"></i><span>表单</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="/Pages/Forms/AgencyForm.aspx"><i class="fa fa-angle-double-right"></i>旅行社表单</a></li>
                            <li><a href="/Pages/Forms/TravelItemForm.aspx"><i class="fa fa-angle-double-right"></i>订单表单</a></li>
                        </ul>
                    </li>
                    <li class="treeview active">
                        <a href="#">
                            <i class="fa fa-table"></i><span>表格</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="AgenciesTable.aspx"><i class="fa fa-angle-double-right"></i>旅行社列表</a></li>
                            <li class="active"><a href="TravelItemsTable.aspx"><i class="fa fa-angle-double-right"></i>旅行订单列表</a></li>
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
        <aside class="right-side">
            <section class="content-header">
                <h1>订单
                    <small>旅行订单预览</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/Default"><i class="fa fa-dashboard">主页</i></a></li>
                    <li><a href="#">表格</a></li>
                    <li class="active">订单</li>
                </ol>
            </section>
            <section class="content">
                <div class="row" data-bind="visible: TravelItemsViewModel.tableVisable">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">订单表格</h3>
                                <div class="box-tools">
                                    <div class="input-group">
                                        <input id="ui_searchText" type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search" />
                                        <div class="input-group-btn">
                                            <button id="ui_searchButton" class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>时间</th>
                                            <th>旅客</th>
                                            <th>路线</th>
                                            <th>地接社</th>
                                            <th class="btn-group-vertical">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody data-bind="foreach: travelItems">
                                        <tr>
                                            <td>
                                                <span data-bind="text: TravelItemsViewModel.DisplayTime($data)"></span>
                                            </td>
                                            <td>
                                                <span data-bind="text: CustomerName"></span>
                                            </td>
                                            <td>
                                                <span data-bind="text: StartLine"></span>
                                            </td>
                                            <td>
                                                <span data-bind="text: Operator? Operator.AgencyName : ''"></span>
                                            </td>
                                            <td>
                                                <div class="btn btn-block btn-info" data-bind="click: TravelItemsViewModel.ViewDetail">预览</div>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                    </tfoot>
                                </table>
                            </div>
                            <%--       <div class="box-footer clearfix">
                                <ul class="pagination pagination-sm no-margin pull-right">
                                    <li><a href="#">&laquo;</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">&raquo;</a></li>
                                </ul>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="row" data-bind="visible: TravelItemsViewModel.detailVisable">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">订单详细信息</h3>
                            </div>
                            <div class="box-body table-responsive no-padding">
                                <div class="form-group">
                                    <label for="ui_customerName">客人姓名</label>
                                    <span data-bind="text: TravelItemsViewModel.selectedItem()? TravelItemsViewModel.selectedItem().CustomerName:''"></span>
                                </div>
                                <div class="form-group">
                                    <label for="ui_customerPhone">客人电话</label>
                                    <span data-bind="text: TravelItemsViewModel.selectedItem()? TravelItemsViewModel.selectedItem().CustomerPhone1:''"></span>
                                </div>
                                <div class="form-group">
                                    <label for="ui_travelDate">出发日期</label>
                                    <span data-bind="text: TravelItemsViewModel.selectedItem()? TravelItemsViewModel.selectedItem().TravelDate:''"></span>
                                </div>
                                <div class="form-group">
                                    <label for="ui_tourRoute">出发路线</label>
                                    <span data-bind="text: TravelItemsViewModel.selectedItem()? TravelItemsViewModel.selectedItem().StartLine:''"></span>
                                </div>
                                <div class="form-group">
                                    <label for="ui_agency">组团社</label>
                                    <span data-bind="text: TravelItemsViewModel.selectedItem()? TravelItemsViewModel.selectedItem().Agency? TravelItemsViewModel.selectedItem().Agency.AgencyName: '' :''"></span>
                                </div>
                                <div class="form-group">
                                    <label for="ui_operator">地接社</label>
                                    <span data-bind="text: TravelItemsViewModel.selectedItem()? TravelItemsViewModel.selectedItem().Operator? TravelItemsViewModel.selectedItem().Operator.AgencyName: '':''"></span>
                                </div>
                            </div>
                            <div class="box-footer clearfix">
                                <button id="ui_itemEditButton" type="button" class="btn btn-primary" data-bind="click: EidtClick">编辑</button>
                                <button id="ui_itemExportButton" type="button" class="btn btn-primary" data-bind="click: ExportItem">导出</button>
                            </div>
                            <div>
                                <form id="ui_exportForm" method="post" enctype="multipart/form-data" target="ui_exportHiddenFrame">
                                    <input type="hidden" name="func" id="ui_exportFunc">
                                    <input type="hidden" name="travelItem" id="ui_exportTravelItem">
                                </form>
                                <iframe name="ui_exportHiddenFrame" style="display: none"></iframe>
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
    <script src="../../js/knockout-3.3.0.js" type="text/javascript"></script>
    <script src="../../js/knockout.simpleGrid.3.0.js" type="text/javascript"></script>
    <script src="../../js/common.js" type="text/javascript"></script>
    <script src="../../js/Pages/Page.TravelItemTable.js"></script>
</asp:Content>
