<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyConfirmation.aspx.cs" Inherits="FlyingSnow.Web.Pages.AgencyConfirmation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4>确认书</h4>
    <hr />
    <div class="form-group">
        <div class="col-md-6">
            <hr />
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">组团社</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">电话</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">传真</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">负责人</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">确认人</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">日期</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Calendar runat="server" Visible="false"></asp:Calendar>
            </div>
        </div>
        <div class="col-md-6">
            <hr />
            <div class="form-group">
                <asp:TextBox runat="server" CssClass="col-md-2 form-control" ID="SearchTextBox"></asp:TextBox>
                <asp:Button runat="server" CssClass="btn btn-default" Text="搜索" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">旅行社</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">电话</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">传真</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">接待人</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">日期</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Calendar runat="server" Visible="false"></asp:Calendar>
            </div>
        </div>
    </div>
    <h5>北京</h5>
    <hr />
    <div class="form-group">
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-1 control-label">客人姓名</asp:Label>
            <asp:TextBox runat="server" CssClass="col-md-3 form-control"></asp:TextBox>
            <asp:Label runat="server" CssClass="col-md-1 control-label">人数</asp:Label>
            <asp:TextBox runat="server" CssClass="col-md-3 form-control"></asp:TextBox>
            <asp:Label runat="server" CssClass="col-md-1 control-label">电话</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-1 control-label">抵京日期/车次</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-1 control-label">团型</asp:Label>
            <asp:TextBox runat="server" CssClass="col-md-3 form-control"></asp:TextBox>
            <asp:Label runat="server" CssClass="col-md-1 control-label">几晚几天</asp:Label>
            <asp:TextBox runat="server" CssClass="col-md-3 form-control"></asp:TextBox>
            <asp:Label runat="server" CssClass="col-md-1 control-label">住宿标准（星）</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-1 control-label">送站日期</asp:Label>
            <asp:TextBox runat="server" CssClass="col-md-3 form-control"></asp:TextBox>
            <asp:Label runat="server" CssClass="col-md-1 control-label">返程票</asp:Label>
            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-1 control-label">结算</asp:Label>
            <asp:TextBox runat="server" TextMode="multiline" CssClass="form-control"></asp:TextBox>
            <%--<textarea runat="server"></textarea>--%>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-8 col-md-4">
            <asp:Button runat="server" ID="CreateButton" Text="录入" CssClass="btn btn-default" />
            <asp:Button runat="server" ID="EditButton" Text="导出" CssClass="btn btn-default" />
        </div>
    </div>
</asp:Content>
