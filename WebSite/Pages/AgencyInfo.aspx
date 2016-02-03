<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyInfo.aspx.cs" Inherits="FlyingSnow.Web.Pages.AgencyTypeIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4>添加旅行社</h4>
    <hr />
    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
        <p class="text-danger">
            <asp:Literal runat="server" ID="FailureText" />
        </p>
    </asp:PlaceHolder>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">旅行社编码</asp:Label>
        <asp:TextBox ID="AgencyCode" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">旅行社名称</asp:Label>
        <asp:TextBox ID="AgencyName" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">旅行社电话</asp:Label>
        <asp:TextBox ID="AgencyPhone" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">旅行社传真</asp:Label>
        <asp:TextBox ID="AgencyFax" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">旅行社负责人</asp:Label>
        <asp:TextBox ID="AgencyPrincipal" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">负责人电话</asp:Label>
        <asp:TextBox ID="AgencyPrincipalPhone" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">旅行社地址</asp:Label>
        <asp:TextBox ID="AgencyAddress" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button runat="server" ID="CreateButton" OnClick="TypeIn_Click" Text="录入" CssClass="btn btn-default" />
            <asp:Button runat="server" ID="EditButton" OnClick="Edit_Click" Text="编辑" CssClass="btn btn-default" Visible="false" />
            <asp:Button runat="server" ID="UpdateButton" OnClick="Update_Click" Text="更新" CssClass="btn btn-default" Visible="false" />
        </div>
    </div>
    <asp:Label runat="server" ID="HideId" Visible="false"></asp:Label>
    <asp:Label runat="server" ID="HideGuid" Visible="false"></asp:Label>
</asp:Content>
