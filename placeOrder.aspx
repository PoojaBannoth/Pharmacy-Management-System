<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="placeOrder.aspx.cs" Inherits="Pharmacy_Management_System.placeOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 168px;
        }
        .auto-style2 {
            width: 435px;
        }
        .auto-style3 {
            width: 274px;
        }
        .auto-style4 {
            width: 51%;
            height: 114px;
        }
        .auto-style5 {
            height: 57px;
        }
        .auto-style7 {
            height: 57px;
            width: 232px;
        }
        .auto-style8 {
            width: 232px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Order ID : </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Order Date : </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" Width="671px">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S.No" />
                    <asp:BoundField DataField="medicine_id" HeaderText="Medicine ID" />
                    <asp:BoundField DataField="medicine_name" HeaderText="Medicine Name" />
                    <asp:ImageField DataImageUrlField="medicine_img_link" HeaderText="Medicine Image">
                        <ControlStyle Height="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="medicine_cost" HeaderText="Price" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="total_cost" HeaderText="Total Price" />
                </Columns>
                <HeaderStyle Height="40px" />
            </asp:GridView>
            <br />
            <table class="auto-style4">
                <tr>
                    <td class="auto-style8">Type Your Address :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="101px" TextMode="MultiLine" Width="404px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Type Mobile Number : </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="383px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="53px" OnClick="Button1_Click" Text="Place Order" Width="188px" />
            <br />
            <br />
            <br />

        </div>
    </div>


    <br />


</asp:Content>
