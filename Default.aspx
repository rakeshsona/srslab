<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<marquee>Welcome To Patient Information System</marquee>
    <form id="form1" runat="server">
    
    <table align="center" bgcolor="White">
    <div align="center"> REGISTRATION</div>
    <tr>
    <td>Patient Id:
    
    </td>
    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Patient Name:</td>
    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Address:</td>
    <td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>Age:</td>
    <td>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>Sex</td>
    <td>

    <asp:RadioButtonList id="rb2" ValidationGroup="val" runat="server">
          	<asp:ListItem Value="Male" />
          	<asp:ListItem Value="Female" />
     	</asp:RadioButtonList>

       </td>
        <td>
            
     	<asp:RequiredFieldValidator id="ReqField2" 
     	ControlToValidate="rb2" ValidationGroup="val"
     	ErrorMessage="select one" runat="server" />
            
        </td>
    </tr>    
     <tr>
     <td>Mobile No:</td>
     <td>
         <asp:TextBox ID="TextBox5" runat="server" Height="22px"></asp:TextBox>
         </td>   
      </tr>
      <tr>
      <td>E-Mail</td>
      <td>
          <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
      <td>Date Of Registration</td>
      <td>
          <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
          </td>
          <td>
          
              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/calendar.jpg" 
                  Width="20px" />
          
          </td>
      
      </tr>
      <tr>
      <td>Patient Type</td>
      <td>
           <asp:RadioButtonList id="rb3" ValidationGroup="val" runat="server">
          	<asp:ListItem Value="In Patient" />
          	<asp:ListItem Value="Out Patient" />
     	</asp:RadioButtonList>
          </td>
      <td>
          <asp:RequiredFieldValidator id="RequiredField2" 
     	ControlToValidate="rb2" ValidationGroup="val"
     	ErrorMessage="select one" runat="server" />
          </td>
      </tr>
      <tr>
      <td>Disease</td>
      <td>
          <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
          </td>
      
      </tr>
      <tr>
      <td>Select Doctor</td>
      <td>
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
              onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="122px">
              <asp:ListItem>Select</asp:ListItem>
          </asp:DropDownList>
          </td>
      </tr>
      <tr>
      <td>Treatment</td>
      <td>
          <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
          </td>
      
      
      </tr>
      <tr>
      <td>Bed Type</td>
      <td>
          <asp:DropDownList ID="DropDownList2" runat="server" Width="122px">
              <asp:ListItem>Select</asp:ListItem>
          </asp:DropDownList>
          </td>
      </tr>
      <tr>
      <td>Rate Per Day:</td>
      <td>
          <asp:DropDownList ID="DropDownList3" runat="server" Width="122px">
              <asp:ListItem>Select</asp:ListItem>
          </asp:DropDownList>
          </td>
      
      </tr>
      <tr>
      <td>Date Of Discharge</td>
      <td>
          <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
      <td>
          &nbsp;</td>
      <td>
          &nbsp;</td>
      </tr>
      <tr>
      <td>
      
          &nbsp;</td>
      <td>
          <asp:ImageButton ID="ImageButton2" runat="server" 
              ImageUrl="~/register-now-button-dark-blue-hi.png" onclick="ImageButton2_Click" 
              Width="120px" />
      </td>
      <td>
      
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      
          </td>
      </tr>
        </table>
    </form>
</body>
</html>
