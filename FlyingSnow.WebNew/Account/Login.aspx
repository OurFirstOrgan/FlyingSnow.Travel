<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FlyingSnow.WebNew.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <title>Log in</title>
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="/Content/font-awesome.min.css" rel="stylesheet" />
    <link href="/Content/ionicons.min.css" rel="stylesheet" />
    <link href="/Dist/AdminLTE.min.css" rel="stylesheet" />
    <link href="/Plugins/iCheck/square/blue.css" rel="stylesheet" />
    <script src="/Scripts/jquery-2.2.0.min.js"></script>
    <script src="/Scripts/bootstrap.min.js"></script>
    <script src="/Plugins/iCheck/icheck.min.js"></script>
</head>
<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <b>登录管理</b>
        </div>
        <div class="login-box-body">
            <p class="login-box-msg">Sign in to start your session</p>
            <form id="ui_loginForm" runat="server" method="post">
                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                    <p class="text-danger">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                </asp:PlaceHolder>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="ui_usernameInput" CssClass="form-control" runat="server" placeholder="账号"></asp:TextBox>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ui_usernameInput" CssClass="text-danger" ErrorMessage="The Username field is required." />
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="ui_passwordInput" CssClass="form-control" runat="server" TextMode="Password" placeholder="密码"></asp:TextBox>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ui_passwordInput" CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <label>
                                <asp:CheckBox ID="ui_rememberCBox" runat="server" />
                                Remember Me
                            </label>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <asp:Button runat="server" ID="ui_loginBtn" CssClass="btn btn-primary btn-block btn-flat" Text="Sign In" OnClick="LogIn" />
                    </div>
                </div>
            </form>
            <a href="#">I forgot my password</a><br />
            <a href="register.html" class="text-center">Register a new membership</a>
        </div>
    </div>
</body>
</html>
