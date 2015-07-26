<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgencyManager.aspx.cs" Inherits="FlyingSnow.Web.Pages.AgencyManager" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4>添加旅行社</h4>
    <hr />
    <asp:TextBox runat="server" CssClass="col-md-2 col-md-offset-8 form-control" ID="SearchTextBox" OnTextChanged="SearchBox_TextChanged"></asp:TextBox>
    <asp:Button runat="server" CssClass="btn btn-default" Text="搜索" OnClick="SearchButton_Click" />
    <br />
    <br />
    <asp:DataGrid runat="server" ID="AgenciesDataGrid" AutoGenerateColumns="False"
        class="table table-striped" AllowPaging="True" AllowSorting="True"
        OnItemCommand="AgenciesDataGrid_ItemCommand"
        OnDeleteCommand="AgenciesDataGrid_DeleteCommand">
        <Columns>
            <asp:BoundColumn DataField="AgencyGuid" Visible="false"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="编码" DataField="AgencyCode"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="名称" DataField="AgencyName"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="联系电话" DataField="AgencyPhones"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="传真" DataField="AgencyFax"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="确认人" DataField="AgencyPrincipal"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="确认人电话" DataField="AgencyPrincipalPhone"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="地址" DataField="AgencyAddress"></asp:BoundColumn>
            <asp:ButtonColumn ButtonType="LinkButton" CommandName="AgencyDetail" Text="预览" HeaderText="详细"></asp:ButtonColumn>
            <asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
        </Columns>
    </asp:DataGrid>

</asp:Content>
