<%@ Page  Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"  >
<div style="font-size:x-large;text-align:center;background-color:aqua" >Student Info Manage Form</div><br />
    <table class="nav-justified">
        <tr>
            <td style="width: 277px">&nbsp;</td>
            <td class="modal-sm" style="width: 239px">Student ID</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" Width="216px"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" BackColor="#FFCC00" BorderColor="#FF33CC" Font-Size="Medium" ForeColor="White" Text="Get" Width="120px" OnClick="Button5_Click" style="margin-top: 16" />
            </td>
        </tr>
        <tr>
            <td style="width: 277px">&nbsp;</td>
            <td class="modal-sm" style="width: 239px">Student Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 277px; height: 20px"></td>
            <td style="height: 20px; width: 239px">Adrress</td>
            <td style="height: 20px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Enabled="true" Text= "Jordan" Value= "Jordan"></asp:ListItem>
                     <asp:ListItem Enabled="true" Text= "KSA" Value= "KSA"></asp:ListItem>
                      <asp:ListItem Enabled="true" Text= "Palastine" Value= "Palastine"></asp:ListItem>
                                    <asp:ListItem Enabled="true" Text= "UAE" Value= "UAE"></asp:ListItem>
                                       <asp:ListItem Enabled="true" Text= "Qatar" Value= "Qatar"></asp:ListItem>



                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 277px">&nbsp;</td>
            <td class="modal-sm" style="width: 239px">Age</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 277px; height: 20px;"></td>
            <td class="modal-sm" style="width: 239px; height: 20px;">Contact</td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" Width="216px"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td style="width: 277px">&nbsp;</td>
            <td class="">&nbsp;</td>
            <td>
            </td>
        </tr>

         <tr>
            <td style="width: 277px; height: 40px;"></td>
            <td class="" style="height: 40px">Sex</td>
            <td style="height: 40px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="20px" RepeatDirection="Horizontal" Width="224px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>

         <tr>
            <td style="width: 277px">&nbsp;</td>
            <td class="">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 277px; height: 35px;"></td>
            <td class="modal-sm" style="width: 239px; height: 35px;"></td>
            <td style="height: 35px">
                <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="#9999FF" Font-Size="Medium" ForeColor="White" Text="insert" Width="120px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" BackColor="#FF3399" BorderColor="#FF33CC" Font-Size="Medium" ForeColor="White" Text="Update" Width="120px" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" BackColor="#00CC66" BorderColor="#FF33CC" Font-Size="Medium" ForeColor="White" Text="Remove" Width="120px" OnClick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" BackColor="#33CCCC" BorderColor="#FF33CC" Font-Size="Medium" ForeColor="White" Text="search" Width="120px" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 277px">&nbsp;</td>
            <td class="modal-sm" style="width: 239px">&nbsp;</td>
            <td>
                 
            </td>
        </tr>
        <tr>
            <td style="width: 277px">&nbsp;</td>
            <td class="modal-sm" style="width: 239px">&nbsp;</td>
            <td>
                
                <asp:GridView ID="GridView1" runat="server" Width="445px">
                   
                </asp:GridView>
                
            </td>
        </tr>
    </table>
    </table>
</asp:Content>
