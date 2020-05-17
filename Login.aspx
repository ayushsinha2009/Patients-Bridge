<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <style>
        label {
            font-weight:bold;
            color:black;
        }
        .panel-title {
            color:black;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container-fluid" style="background-image:url('images/bg medical2.jpg'); background-size:cover; background-position:100% 100%; background-attachment:fixed; ">
        <div class="row"  style="background:rgba(255,255,255,0.5); padding:30px 0px; " > 

            <div class="col-sm-3"></div>
            <div class="col-sm-6" style="background:rgba(255,255,255,0.5); box-shadow:0px 0px 15px gray;"   >



                <div class="panel panel-default">
                    <div class="panel-heading">
                        <br /><br />
                        <h3 class="panel-title"><strong>Patient Login In </strong></h3>
                    </div>
                    <div class="panel-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email ID is Required!" ControlToValidate="TextBox1" ForeColor="Red" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email ID is in incorrect format." ForeColor="Red" ControlToValidate="TextBox1" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TextBox1" TextMode="Email" placeholder="Enter Email" CssClass="form-control" runat="server"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password </label>  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="true" runat="server" ErrorMessage="Password is Required!" ControlToValidate="TextBox2" ForeColor="Red" ></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBox2" TextMode="Password" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>

                            </div>
                            
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-success btn-lg" />
                            <br /><br />
                    </div>
                </div>

            </div>
            <div class="col-sm-3"></div>


        </div>

    </div>



</asp:Content>

