<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <marquee>Welcome To Patient Information System</marquee>
    </div>
    <tr>
    <td>To Register New Patient Click REGISTER</td>
    <td align="right">To Get Patient Information Click PORTAL</td>
    </tr>
    <table align="right">
    <tr>
    <td>
        &nbsp;</td>
    <td>
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            onloggingout="LoginStatus1_LoggingOut" />
        </td>
    </tr>
    </table>
    <div>
    </div>
    <div></div>
    <div>
    <table align="center">
    <tr>
    <td align="left">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Register.png" 
            Width="150px" onclick="ImageButton1_Click" />
        </td>
        <td></td>
    <td align="right">
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/patient_portal_icon.png" Width="150px" 
            onclick="ImageButton2_Click" />
        </td>
    </tr>
    
    
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    
    
    </table>
    
    </div>
    </form>
</body>
</html>
