<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgenciesTable.aspx.cs" Inherits="FlyingSnow.Web.Pages.Table.AgenciesTable" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <aside class="right-side">
        <section class="content-header">
            <h1>地接社
                    <small>地接社预览</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="/Default"><i class="fa fa-dashboard">主页</i></a></li>
                <li><a href="#">表格</a></li>
                <li class="active">地接社</li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">地接社表格</h3>
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
                                        <th>代码</th>
                                        <th>名称</th>
                                        <th>负责人</th>
                                        <th>联系人电话</th>
                                        <th>传真</th>
                                        <th>地址</th>
                                    </tr>
                                </thead>
                                <tbody data-bind="foreach: agencies" <%--data-bind="foreach: agencies"--%>>
                                    <tr>
                                        <td>
                                            <span data-bind="text: $data.AgencyCode"></span>
                                        </td>
                                        <td>
                                            <span data-bind="text: $data.AgencyName"></span>
                                        </td>
                                        <td>
                                            <span data-bind="text: $data.AgencyPrincipal"></span>
                                        </td>
                                        <td>
                                            <span data-bind="text: $data.AgencyPrincipalPhone"></span>
                                        </td>
                                        <td>
                                            <span data-bind="text: $data.AgencyFax"></span>
                                        </td>
                                        <td>
                                            <span data-bind="text: $data.AgencyAddress"></span>
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
        </section>
    </aside>
    <script src="/js/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="/js/app.min.js"></script>
    <script src="/js/knockout-3.3.0.js" type="text/javascript"></script>
    <script src="/js/knockout.simpleGrid.3.0.js" type="text/javascript"></script>
    <script src="/js/Pages/Page.AgenciesTable.js"></script>
</asp:Content>
