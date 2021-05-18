<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Pharmacy_Management_System.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container mt-2">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>User Registration</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>


                   <div class="row">
                       <div class="col-md-6">
                           <label class="mt-1">Full Name</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                            </div>
                       </div>
                       <div class="col-md-6">
                           <label class="mt-1">Date-of-Birth</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Full Name" TextMode="Date"></asp:TextBox>
                            </div>
                       </div>

                       <br />

                  </div>
                   <div class="row">
                       <div class="col-md-6">
                           <label class="mt-3">Contact Number</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact Number" TextMode="Number" ></asp:TextBox>
                            </div>
                       </div>
                       <div class="col-md-6">
                           <label class="mt-3">Email Id</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email ID" TextMode="email"></asp:TextBox>
                            </div>
                       </div>

                  </div>

                   <div class="row">
                       <div class="col-md-4">
                           <label class="mt-3">State</label>
                            <div class="form-group">
                                <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select" Value="select" />
                                    <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                    <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                    <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                    <asp:ListItem Text="Kerala" Value="Kerala" />
                                    <asp:ListItem Text="Maharastra" Value="Maharastra" />
                                    <asp:ListItem Text="Orissa" Value="Orissa" />
                                    <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                    <asp:ListItem Text="Madya Pradesh" Value="Madya Pradesh" />
                                    <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                    <asp:ListItem Text="Chattisgarh" Value="Chattisgarh" />
                                </asp:DropDownList>
                            </div>
                       </div>
                       <div class="col-md-4">
                           <label class="mt-3">City</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="City"></asp:TextBox>
                            </div>
                       </div>

                       <div class="col-md-4">
                           <label class="mt-3">Pincode</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pincode" TextMode="number"></asp:TextBox>
                            </div>
                       </div>

                  </div>
                   
                   <div class="row">
                       <div class="col">
                           <label class="mt-3">Full Address</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" ></asp:TextBox>
                            </div>
                       </div>

                  </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge rounded-pill bg-success mt-3">Login Credentials</span>
                        </center>
                     </div>
                  </div>

                   <div class="row">
                       <div class="col-md-6">
                           <label class="mt-2">User ID</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="User ID"></asp:TextBox>
                            </div>
                       </div>
                       <div class="col-md-6">
                           <label class="mt-2">Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Password" TextMode="password"></asp:TextBox>
                            </div>
                       </div>
                  </div>


                  <div class="row">
                     <div class="d-grid gap-2 col-12 mx-auto">
                        <div class="form-group" style="text-align:center">
                           <asp:Button class="btn btn-success btn-block btn-lg mt-3 pr-md-3 pl-md-3" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>


               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>
