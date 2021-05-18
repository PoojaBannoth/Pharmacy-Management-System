<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewDetails.aspx.cs" Inherits="Pharmacy_Management_System.viewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 96%;
            height: 639px;
        }
        .auto-style2 {
            height: 48px;
        }
        .auto-style3 {
            width: 388px;
        }
        .auto-style4 {
            text-align: left;
            height: 59px;
        }
        .auto-style5 {
            text-align: left;
            height: 66px;
        }
        .auto-style6 {
            text-align: left;
            height: 64px;
        }
        .auto-style7 {
            height: 60px;
        }
        .auto-style8 {
            text-align: left;
            height: 113px;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">

                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <asp:DataList ID="DataList1" runat="server" DataKeyField="medicine_id" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2" colspan="2">
                                    <asp:Label ID="Label2" runat="server" Font-Size="Large" Text='<%# Eval("medicine_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3" rowspan="3">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("medicine_img_link") %>' Width="300px" />
                                </td>
                                <td class="auto-style5">Product ID :
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("medicine_id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">Price :
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("medicine_cost") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Category :
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">Description :
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("medicine_description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7" colspan="2">
                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("medicine_id") %>' CommandName="addtocart" Text="Buy Now" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epharmacydbConnectionString %>" ProviderName="<%$ ConnectionStrings:epharmacydbConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM medicine_master_tbl">
                </asp:SqlDataSource>
                <br />
                <br />

            </div>
        </div>
    </div>

</asp:Content>
