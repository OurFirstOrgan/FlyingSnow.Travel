<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TravelItemPage.aspx.cs" Inherits="FlyingSnow.Web.Pages.TravelItemPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4>旅行单</h4>
    <hr />
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">旅行日期</asp:Label>
        <asp:Calendar ID="TravelDate" runat="server"></asp:Calendar>
    </div>
    <hr />
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">姓名</asp:Label>
        <asp:TextBox ID="ContactName" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <hr />
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-12 control-label">人数</asp:Label>
    </div>
    <div class="form-group">
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-1 control-label">成</asp:Label>
            <asp:TextBox ID="AdultCount" runat="server" CssClass="col-md-2 form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-1 control-label">孩</asp:Label>
            <asp:TextBox ID="ChildCount" runat="server" CssClass="col-md-2 form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-1 control-label">陪</asp:Label>
            <asp:TextBox ID="EscortCount" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <hr />
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">介绍人</asp:Label>
        <asp:TextBox ID="Introducer" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <hr />
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">目的地</asp:Label>
        <asp:TextBox ID="Destination" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <hr />
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">团型</asp:Label>
        <asp:TextBox ID="GroupType" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <hr />
    <h6>支出
    </h6>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">去票</asp:Label>
        <asp:TextBox ID="TicketLeave" runat="server" CssClass="col-md-4 form-control"></asp:TextBox>
        <asp:Label runat="server" CssClass="col-md-2 control-label">费用</asp:Label>
        <asp:TextBox ID="TicketLeavePrice" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">回票</asp:Label>
        <asp:TextBox ID="TicketReturn" runat="server" CssClass="col-md-4 form-control"></asp:TextBox>
        <asp:Label runat="server" CssClass="col-md-2 control-label">费用</asp:Label>
        <asp:TextBox ID="TicketReturnPrice" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button runat="server" ID="CreateButton" OnClick="TypeIn_Click" Text="录入" CssClass="btn btn-default" />
            <asp:Button runat="server" ID="EditButton" OnClick="Edit_Click" Text="编辑" CssClass="btn btn-default" Visible="false" />
            <asp:Button runat="server" ID="UpdateButton" OnClick="Update_Click" Text="更新" CssClass="btn btn-default" Visible="false" />
        </div>
    </div>
</asp:Content>
