<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addToCart.aspx.cs" Inherits="Pharmacy_Management_System.addToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
                <h4>&nbsp;</h4>
                <h4>You Have Added
                    <asp:Label ID="Label1" runat="server" Font-Size="Large"></asp:Label>
&nbsp;Products to Your Cart </h4>
                <p>&nbsp;</p>
                <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Continue Shopping</asp:LinkButton>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="314px" Width="639px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="S.No">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="medicine_id" HeaderText="Medicine ID">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="medicine_name" HeaderText="Medicine Name">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="medicine_img_link" HeaderText="Medicine Image" ControlStyle-Height="150px">
<ControlStyle Height="150px"></ControlStyle>

                            <ItemStyle HorizontalAlign="Center" />
                        </asp:ImageField>
                        <asp:BoundField DataField="medicine_cost" HeaderText="Price">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="total_cost" HeaderText="Total Price" />
                        <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
                        <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                    </Columns>
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
                <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">Clear Cart</asp:LinkButton>
                <br />
                <br />

                <br />
                <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="Checkout" Width="141px" />
                <br />

            </div>
        </div>
    </div>
</asp:Content>
