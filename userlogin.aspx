<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Pharmacy_Management_System.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/login.css" rel="stylesheet" />
    <script type="text/javascript" src="js/login.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="width:fit-content()">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="panda">
                    <div class="ear"></div>
                    <div class="face">
                        <div class="eye-shade"></div>
                        <div class="eye-white">
                            <div class="eye-ball"></div>
                        </div>
                        <div class="eye-shade rgt"></div>
                        <div class="eye-white rgt">
                            <div class="eye-ball"></div>
                        </div>
                        <div class="nose"></div>
                        <div class="mouth"></div>
                    </div>
                    <div class="body"> </div>
                    <div class="foot">
                        <div class="finger"></div>
                    </div>
                    <div class="foot rgt">
                        <div class="finger"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
           <div class="col forms">
               <div class="hand"></div>
               <div class="hand rgt"></div>
               <div class="heading"><h1>Welcome Back</h1></div>
               
               <label>username</label>
               <div class="form-group">
                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Font-Names="Roboto, sans-serif"
                       placeholder="username"></asp:TextBox>
               </div>

               <label>password</label>
               <div class="form-group">
                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="password" 
                       TextMode="Password" AutoComplete="on"></asp:TextBox>
               </div>

               <div class="form-group">
                   <asp:Button class="btn btn-success btn-block btn-lg buttons" ID="Button1" runat="server" 
                       Text="Login" OnClick="Button1_Click" />
               </div>
               
               <p class="alert">Invalid Credentials..!!</p>


           </div>
        </div>
    </div>

</asp:Content>
