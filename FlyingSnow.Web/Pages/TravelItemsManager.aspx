<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TravelItemsManager.aspx.cs" Inherits="FlyingSnow.Web.Pages.TravelItemsManager" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4></h4>
    <hr />
    <a runat="server" href="~/Pages/TravelItemPage.aspx">添加</a>
    <br />
    <asp:TextBox runat="server" CssClass="col-md-2 col-md-offset-8 form-control" ID="SearchTextBox"></asp:TextBox>
    <asp:Button runat="server" CssClass="btn btn-default" Text="搜索" />
    <br />
    <asp:DataGrid runat="server" ID="TravelItemsDataGrid" AutoGenerateColumns="False"
        class="table table-striped" AllowPaging="True" AllowSorting="True"
        OnSelectedIndexChanged="TravelItemsDataGrid_SelectedIndexChanged"
        OnDeleteCommand="TravelItemsDataGrid_DeleteCommand">
        <Columns>
            <asp:BoundColumn DataField="ItemGuid" Visible="False"></asp:BoundColumn>
            <asp:BoundColumn DataField="TravelDate" HeaderText="日期" DataFormatString="{0:yyyy-MM-dd}"></asp:BoundColumn>
            <asp:BoundColumn DataField="ContactName" HeaderText="姓名"></asp:BoundColumn>
            <asp:BoundColumn DataField="PeoplesCount" HeaderText="人数"></asp:BoundColumn>
            <asp:BoundColumn DataField="Agency" HeaderText="旅行社"></asp:BoundColumn>
            <asp:BoundColumn DataField="Introducer" HeaderText="介绍人"></asp:BoundColumn>
            <asp:BoundColumn DataField="Destination" HeaderText="目的地"></asp:BoundColumn>
            <asp:BoundColumn DataField="GroupType" HeaderText="团型"></asp:BoundColumn>
            <asp:ButtonColumn CommandName="Select" Text="预览"></asp:ButtonColumn>
            <asp:ButtonColumn CommandName="Delete" Text="删除"></asp:ButtonColumn>
            <asp:ButtonColumn CommandName="Export" Text="导出"></asp:ButtonColumn>
        </Columns>
    </asp:DataGrid>
</asp:Content>
