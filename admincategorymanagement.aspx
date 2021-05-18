﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admincategorymanagement.aspx.cs" Inherits="Pharmacy_Management_System.admincategorymanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            //$(".table").prepend($("<thread></thread>").append($(this).find("tr:first"))).dataTable();
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$(".table1").Datatable();
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row mt-3">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Categories Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/writer.png" width="100px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-4">
                               <label>Category ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:LinkButton  class="btn btn-primary w-auto" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Go</asp:LinkButton>
                                    </div>
                                </div>
                           </div>

                            <div class="col-md-8">
                                <label>Category Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Category Name"></asp:TextBox>
 
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>

                    </div>
                </div>
                <a href="homepage.aspx"> <<--Back to Home</a>
                <br /><br />
            </div>

             <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Categories List</h4>
                                 </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epharmacydbConnectionString %>" ProviderName="<%$ ConnectionStrings:epharmacydbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM epharmacydb.category_master_tbl;"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="category_id" HeaderText="category_id" ReadOnly="True" SortExpression="category_id" />
                                        <asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
