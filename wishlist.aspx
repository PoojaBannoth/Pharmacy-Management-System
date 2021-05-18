<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wishlist.aspx.cs" Inherits="Pharmacy_Management_System.wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            You Have <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Label"></asp:Label>
            &nbsp;Products in your Wishlist
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">Continue Shopping</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="20" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="S No">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sno") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("sno") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="medicine_id" HeaderText="Medicine ID">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="medicine_name" HeaderText="Medicine Name">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="medicine_img_link" HeaderText="Medicine Image">
                        <ControlStyle Height="150px" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle Height="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="medicine_cost" HeaderText="Cost">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ButtonField ButtonType="Image" ImageUrl="~/imgs/addtocart.jpg" Text="Add to Cart">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle Height="30px" HorizontalAlign="Center" />
                    </asp:ButtonField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
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
            <br />
            <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Clear Wishlist</asp:LinkButton>
            <br />
            <br />
        </div>
    </div>

</asp:Content>
