<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FlyingSnow.Web.Account.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Registration Page</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../css/ionicons.min.css" rel="stylesheet" />
    <link href="../css/AdminLTE.min.css" rel="stylesheet" />
    <link href="../css/iCheck/square/blue.css" rel="stylesheet" />
</head>
<body class="hold-transition register-page">
    <div class="register-box">
        <div class="register-logo">
            <%--<a href="../../index2.html"><b>注册页面</b></a>--%>
            <b>注册页面</b>
        </div>
        <div class="register-box-body">
            <p class="text-danger">
                <asp:Literal runat="server" ID="ErrorMessage"></asp:Literal>
            </p>
            <p class="login-box-msg">Register a new membership</p>
            <form runat="server" method="post">
                <div class="form-group has-feedback">
                    <label for="ui_usernameInput">账号</label>
                    <asp:TextBox ID="ui_usernameInput" CssClass="form-control" runat="server"></asp:TextBox>
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ui_usernameInput" CssClass="text-danger" ErrorMessage="The username field is required."></asp:RequiredFieldValidator>
                </div>
                <%--                <div class="form-group has-feedback">
                    <label for="ui_passwordInput">密码</label>
                    <asp:TextBox ID="123" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>--%>
                <div class="form-group has-feedback">
                    <label for="ui_passwordInput">密码</label>
                    <asp:TextBox ID="ui_passwordInput" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ui_passwordInput" CssClass="text-danger" ErrorMessage="The password field is required."></asp:RequiredFieldValidator>
                </div>
                <div class="form-group has-feedback">
                    <label for="ui_passwordRetype">密码确认</label>
                    <asp:TextBox ID="ui_passwordRetype" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ui_passwordRetype"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="ui_passwordInput" ControlToValidate="ui_passwordRetype"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <label>
                                <asp:CheckBox ID="ui_agreeCBox" runat="server" />
                                I agree to the <a href="#">terms</a>
                            </label>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <asp:Button ID="ui_registerBtn" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="Register" OnClick="Register_Click"></asp:Button>
                    </div>
                </div>
            </form>
            <a href="Login.aspx" class="text-center">I already have a membership</a>
        </div>
    </div>
    <script src="../js/jquery-1.10.2.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
</body>
</html>
