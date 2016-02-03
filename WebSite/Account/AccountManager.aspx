<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccountManager.aspx.cs" Inherits="FlyingSnow.Web.Account.AccountManager" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <hr />
    <asp:GridView ID="UserAccountGridView" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" class="table table-bordered"
        OnRowUpdating="UserAccountGridView_RowUpdating"
        OnRowCancelingEdit="UserAccountGridView_RowCancelingEdit"
        OnRowEditing="UserAccountGridView_RowEditing"
        OnRowDeleting="UserAccountGridView_RowDeleting">
        <Columns>
            <asp:BoundField HeaderText="账号" DataField="UserName" ReadOnly="true" />
            <asp:BoundField HeaderText="用户" DataField="RealUserName" />
            <asp:BoundField HeaderText="权限" DataField="Permission" />
            <%--            <asp:TemplateField HeaderText="权限">
                <ItemTemplate>
                    <asp:DropDownList ID="permissionDownlist" runat="server" DataTextField="Permission" DataValueField="Permission"></asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
