<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="placedSuccessfully.aspx.cs" Inherits="Pharmacy_Management_System.placedSuccessfully" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 308px;
        }
        .auto-style2 {
            width: 100%;
            height: 138px;
        }
        .auto-style3 {
            width: 493px;
            text-align: left;
            height: 138px;
        }
        .auto-style4 {
            text-align: left;
            height: 138px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4>Your Order Has been placed successfully.</h4>
        
        <br />
        Order Id :
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="62px" OnClick="Button1_Click" Text="Download Invoice" Width="233px" />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <br />
            <table border="1" class="auto-style1">
                <tr>
                    <td>Retail Invoice</td>
                </tr>
                <tr>
                    <td class="text-start">Order No :<asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                        Order Date :
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style3">Buyer Address :
                                    <br />
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style4">Seller Address :
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="214px" Width="1038px">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="S No">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="medicine_id" HeaderText="Medicine ID">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="medicine_name" HeaderText="Medicine Name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="medicine_cost" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="total_cost" HeaderText="Total Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Grand Toal :
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </asp:Panel>
        <br />

    </div>

</asp:Content>
