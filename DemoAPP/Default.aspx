<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="DemoAPP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-color:blueviolet; color:white" align="center">
        Simple CRUD Operation in VB.NET
    </div >
    <div style="" align="center">

        <table class="w-100">
            <tr>
                <td style="height: 41px">
                    <asp:Label ID="Label4" runat="server" Text="TaskId"></asp:Label>
                </td>
                <td style="height: 41px">
                    <asp:TextBox ID="txtTaskId" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 41px">
                    <asp:Label ID="Label3" runat="server" Text="Priority"></asp:Label>
                </td>
                <td style="height: 41px">
                    <asp:DropDownList ID="dropPriority" runat="server" Width="230px">
                        <asp:ListItem Value="1">Low</asp:ListItem>
                        <asp:ListItem Value="2">Medium</asp:ListItem>
                        <asp:ListItem Value="3">High</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td> </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#9900FF" ForeColor="White" Text="Save" Width="115px" />
                &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#9900CC" ForeColor="White" Text="Update" Width="115px" />
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
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

        <br />
    </div>
</asp:Content>
