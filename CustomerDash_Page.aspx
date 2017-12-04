<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerDash_Page.aspx.cs" Inherits="CustomerDash_Page" %>

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
    <form id="form1" runat="server">
        <div class="jumbotron text-center">
            <h1 class="headText">Rides 'R Us</h1>
        </div>


        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <asp:Button ID="ViewProfile" runat="server" Text="View Profile Information" CssClass="blueDashButton" />
                </div>
                <div class="col-lg-3">
                    <asp:Button ID="CreateOrder" runat="server" Text="Create Order" CssClass="greenDashButton" />
                </div>
                <div class="col-lg-3">
                    <asp:Button ID="ChangeOrder" runat="server" Text="Change Order" CssClass="blueDashButton" />
                </div>
                <div class="col-lg-3">
                    <asp:Button ID="ViewPrevOrders" runat="server" Text="View Previous Orders" CssClass="greenDashButton" />
                </div>
            </div>
        </div>

    </form>
</body>
</html>
