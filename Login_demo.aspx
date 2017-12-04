<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_demo.aspx.cs" Inherits="Login_demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link rel="stylesheet" type="text/css" href="bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="bootstrap-theme.css" />
    <link rel="stylesheet" type="text/css" href="bootstrap-theme.min.css" />
    <title></title>
</head>

<body>
    <form id="form1" runat="server" class="center">
        <div class="jumbotron text-center">
            <h1 class="headText">Rides 'R Us</h1>
        </div>
        <div class="parent">
        <div class="row">

            <div id="username" class="row">
                Username:
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="loginTextbox"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Username"
                    ForeColor="Red"></asp:RequiredFieldValidator>

            </div>

            <div id="password" class="row">
                Password:
                        <asp:TextBox ID="TextBox2" TextMode="password" runat="server" CssClass="loginTextbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Password"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="row">
                <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" CssClass="loginButton" />
            </div>
            <div class="row">
                <asp:Button ID="Button2" runat="server" Text="Create Account" OnClick="Button2_Click" CssClass="createAcct" />
            </div>
            <div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>

        </div>
            </div>
    </form>
</body>
</html>
