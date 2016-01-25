<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyForm.aspx.cs" Inherits="FlyingSnow.Web.Pages.Forms.AgencyForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <aside class="right-side">
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
        <section class="content">
            <div class="row">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">旅行社</h3>
                        </div>
                        <div class="box-body">
                            <div class="form-group">
                                <label for="ui_agencyName">名称</label>
                                <asp:TextBox runat="server" ID="ui_agencyName" CssClass="form-control" placeholder="旅行社名称"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="ui_agencyCode">代码</label>
                                <asp:TextBox runat="server" ID="ui_agencyCode" CssClass="form-control" placeholder="代码编号"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="ui_agencyPrincipal">确认人</label>
                                <asp:TextBox runat="server" ID="ui_agencyPrincipal" CssClass="form-control" placeholder="旅行社确认人"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="ui_agencyPrincipalPhone">负责人电话</label>
                                <asp:TextBox runat="server" ID="ui_agencyPrincipalPhone" CssClass="form-control" placeholder="负责人电话"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="ui_agencyFinancePhone">财务电话</label>
                                <asp:TextBox runat="server" ID="ui_agencyFinancePhone" CssClass="form-control" placeholder="财务电话"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="ui_agencyFax">传真</label>
                                <asp:TextBox runat="server" ID="ui_agencyFax" CssClass="form-control" placeholder="旅行社传真"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="ui_agencyAddress">地址</label>
                                <asp:TextBox runat="server" ID="ui_agencyAddress" CssClass="form-control" placeholder="旅行社地址"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="ui_agencyContactQQ1">QQ</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <asp:TextBox runat="server" ID="ui_agencyContactU1" CssClass="form-control input-sm" placeholder="联系人"></asp:TextBox>
                                    <span class="input-group-addon"><i class="fa fa-comments"></i></span>
                                    <asp:TextBox runat="server" ID="ui_agencyContactQQ1" CssClass="form-control input-sm" placeholder="QQ 1"></asp:TextBox>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <asp:TextBox runat="server" ID="ui_agencyContactU2" CssClass="form-control input-sm" placeholder="联系人"></asp:TextBox>
                                    <span class="input-group-addon"><i class="fa fa-comments"></i></span>
                                    <asp:TextBox runat="server" ID="ui_agencyContactQQ2" CssClass="form-control input-sm" placeholder="QQ 2"></asp:TextBox>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <asp:TextBox runat="server" ID="ui_agencyContactU3" CssClass="form-control input-sm" placeholder="联系人"></asp:TextBox>
                                    <span class="input-group-addon"><i class="fa fa-comments"></i></span>
                                    <asp:TextBox runat="server" ID="ui_agencyContactQQ3" CssClass="form-control input-sm" placeholder="QQ 3"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box box-warning">
                        <div class="box-header">
                            <h3 class="box-title">备注</h3>
                        </div>
                        <div class="box-body">

                            <div class="form-group">
                                <label>内容</label>
                                <asp:TextBox runat="server" class="form-control" Rows="3" placeholder="输入 ..." TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box-footer">
                <asp:Button runat="server" ID="ui_agencyButton" type="button" class="btn btn-primary" Text="提交" OnClick="ui_agencyButton_Click" />
            </div>
        </section>
    </aside>
    <%--    <script src="../../js/jQuery-2.1.4.min.js"></script>
    <script src="../../js/jquery.signalR-2.2.0.min.js"></script>
    <script src="/signalr/hubs"></script>
    <script src="../../js/SignalR/SignalRAgency.js"></script>
    <script src="../../js/Pages/Page.AgencyForm.js"></script>--%>
    <%--    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../js/AdminLTE/app.js" type="text/javascript"></script>
    <script src="../../js/jquery.signalR-2.2.0.min.js"></script>
    <script src="/signalr/hubs"></script>
    <script src="../../js/SignalR/SignalRAgency.js"></script>
    <script src="../../js/common.js"></script>
    <script src="../../js/Pages/Page.AgencyForm.js"></script>--%>
</asp:Content>
