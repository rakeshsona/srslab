<%@ Page Language="C#" AutoEventWireup="true" CodeFile="patientportal.aspx.cs" Inherits="patientportal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<marquee>Welcome To Patient Information System</marquee>
    <form id="form1" runat="server" >
    <table align="center">
    <tr>
    <td ></td><td>Search By
    </td>
    </tr>
    <tr>
    <td>Patient Id:</td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
        </td>
    <td>Doctor Id:</td>
    <td>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
        </td>
    </tr>
    <tr>
    <td>Patient Name:</td>
    <td>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>

    </tr>
    <tr>
    <td>Address:</td>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
  </tr>
  <tr>
  <td>Age:</td>
  <td>
      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td>Sex:</td>
  <td>
      <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td>Mobile No:</td>
  <td>
      <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
      </td> 
  </tr>
  <tr>
  <td>E-Mail:</td>
  <td>
      <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td>Date Of Registration:</td>
  <td>
      <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td>Patient Type:</td>
  <td>
      <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td>Disease:</td>
  <td>
      <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td>Doctor Assign:</td>
  <td>
      <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
      </td>  
  </tr>
  <tr>
  <td>Treatment:</td>
  <td>
      <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td>Bed Type:</td>
  <td>
      <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
      </td>  
  </tr>
  <tr>
  <td>Rate Per Day:</td>
  <td>
      <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
  <td>Date Of Discharge:
  </td>
  <td>
      <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
    </table>
    </form>
</body>
</html>
