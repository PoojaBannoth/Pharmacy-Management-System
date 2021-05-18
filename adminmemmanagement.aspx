<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminmemmanagement.aspx.cs" Inherits="Pharmacy_Management_System.adminmemmanagement" %>

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

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mt-3">
                <div class="card">
                   <div class="card-body">

                       <div class="row">
                         <div class="col">
                            <center>
                               <h4>Member Details</h4>
                            </center>
                         </div>
                      </div>
                      <div class="row">
                         <div class="col">
                            <center>
                               <img width="100px" src="imgs/generaluser.png"/>
                            </center>
                         </div>
                      </div>
                  
                      <div class="row">
                         <div class="col">
                            <hr>
                         </div>
                      </div>


                       <div class="row">

                           <div class="col-md-3">
                               <label class="mt-3">Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:LinkButton  class="btn btn-primary w-auto" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Go</asp:LinkButton>
                                    </div>
                                </div>
                           </div>

                           <div class="col-md-4">
                               <label class="mt-3">Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                           </div>

                           <div class="col-md-5">
                               <label class="mt-3">Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton  class="btn btn-success mr-1 w-auto" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton  class="btn btn-warning mr-1 w-auto" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton  class="btn btn-danger mr-1 w-auto" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                           </div>

                      </div>

                       <div class="row">

                           <div class="col-md-3">
                               <label class="mt-3">DOB</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"
                                             TextMode="Date" placeholder="D-O-B" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                           </div>

                           <div class="col-md-4">
                               <label class="mt-3">Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"
                                        placeholder="Contact Number" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                           </div>

                           <div class="col-md-5">
                               <label class="mt-3">Email ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                            placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                           </div>

                      </div>

                       <div class="row">

                           <div class="col-md-4">
                               <label class="mt-3">State</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
                                             placeholder="State" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                           </div>

                           <div class="col-md-4">
                               <label class="mt-3">City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"
                                        placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>
                           </div>

                           <div class="col-md-4">
                               <label class="mt-3">Pin Code</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server"
                                            placeholder="Pin Code" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                           </div>

                      </div>
                   
                       <div class="row">

                           <div class="col">
                               <label class="mt-3">Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                        placeholder="Full Postal Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                </div>
                           </div>
                      </div>


                      <div class="row">
                         <div class="col-8 mx-auto">
                             <asp:Button class="btn btn-lg btn-danger mt-4 pe-auto" ID="Button3" runat="server"
                                 Text="Delete User Permenantly" OnClick="Button3_Click" />
                      </div>


                   </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br><br>
             </div>
            </div>
            
            <div class="col-md-7 mt-3">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                             <div class="col">
                                <center>
                                   <h4>Members List</h4>
                                </center>
                             </div>
                        </div>
                        <div class="row">
                            <div class="col">
                            <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:epharmacydbConnectionString %>" ProviderName="<%$ ConnectionStrings:epharmacydbConnectionString.ProviderName %>" SelectCommand="SELECT member_id, full_name, account_status , contact_no , email , state, city FROM epharmacydb.member_master_tbl;"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordeed" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member_Id" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
