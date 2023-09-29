<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="DemoAPP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-color:blueviolet; color:white" align="center">
        Simple CRUD Operation in VB.NET
    </div >
    <div style="" align="center">

        <table class="w-100">
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="TaskId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTaskId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 41px">
                    <asp:Label ID="Label3" runat="server" Text="Priority"></asp:Label>
                </td>
                <td style="height: 41px">
                    <asp:DropDownList ID="dropPriority" runat="server" Width="220px">
                        <asp:ListItem Value="1">Low</asp:ListItem>
                        <asp:ListItem Value="2">Medium</asp:ListItem>
                        <asp:ListItem Value="3">High</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td> </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#9900FF" ForeColor="White" Text="Save" Width="219px" />
                </td>
            </tr>

        </table>

    </div>

    <hr />
    <br />
    <div>
        <div style="background-color:blueviolet; color:white;" align="center">
            Task Details:
        </div>
        <asp:GridView ID="GridView1" runat="server" Width="1216px">
        </asp:GridView>

    </div>
</asp:Content>
