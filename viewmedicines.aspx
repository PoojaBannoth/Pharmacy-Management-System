<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewmedicines.aspx.cs" Inherits="Pharmacy_Management_System.viewmedicines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style271 {
            font-size: x-large;
            font-weight: 700;
        }
        .auto-style278 {
            width: 371px;
            height: 40px;
        }
        .auto-style280 {
            width: 371px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">
            <div class="col">
                <center>
                    <h4>&nbsp;</h4>
                    <h4>Medicines Inventory List</h4>
                </center>
            </div>
        </div>

       <%--  <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epharmacydbConnectionString %>" ProviderName="<%$ ConnectionStrings:epharmacydbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM epharmacydb.medicine_master_tbl;"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordeed" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="medicine_id" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" >
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Image CssClass="img-fluid p2" ID="Image1" runat="server" ImageUrl='<%# Eval("medicine_img_link") %>' Height="150px" />
                                        <br />
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text='<%# Eval("medicine_name") %>'></asp:Label>
                                        <br />
                                        Rs.<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text='<%# Eval("medicine_cost") %>'></asp:Label>
                                        /- only
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
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
                    </div>
                </div>
            </div> 
        </div>--%>
        <div class="row">
            <div class="col">
                No of Products in Your Cart :
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Label"></asp:Label>
    &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Show Cart</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">Show Wishlist</asp:LinkButton>
                <br />
            </div>
            <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epharmacydbConnectionString %>" ProviderName="<%$ ConnectionStrings:epharmacydbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM medicine_master_tbl;"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="30" CellSpacing="25" RepeatColumns="5" OnItemCommand="DataList1_ItemCommand" BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatDirection="Horizontal">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                <ItemTemplate>
                    <table border="1" class="w-100">
                        <tr>
                            <td class="text-end" size="10">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/imgs/addtowishlist.png" Width="30px" CommandName="addtowishlist" CommandArgument='<%# Eval("medicine_id") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style280 px-4" size="10">
                                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("medicine_img_link") %>' />
                                &nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style280">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style271" Text='<%# Eval("medicine_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style280"><strong><em><span class="auto-style1">Rs: </span>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text='<%# Eval("medicine_cost") %>'></asp:Label>
                                <span class="auto-style1">/-</span></em></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style280">Quantity :
                                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="False" Font-Size="Medium" Width="90px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style280">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style280">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="49px" ImageUrl="~/imgs/viewdet.png" Width="170px" CommandName="viewdetails" CommandArgument='<%# Eval("medicine_id") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style278 px-4 pb-3">
                                <asp:ImageButton runat="server" Height="37px" ImageUrl="~/imgs/addtocart.jpg" Width="145px" CommandName="addtocart" CommandArgument='<%# Eval("medicine_id") %>'/>
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
                
            </asp:DataList>
            <br />
        </div>
        <br />

        <a href="homepage.aspx"><< Back to Home</a><br><br>

    </div>


</asp:Content>
