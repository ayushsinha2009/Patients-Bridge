<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="OTPVerification.aspx.cs" Inherits="OTPVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        label {
            font-weight:bold;
            color:black;
        }
        .panel-title {
            color:black;
        }
        .form-control
        {
            outline:1px solid gray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container-fluid" style="background-image:url('images/bg medical.jpg'); background-size:cover; background-position:100% 100%; background-attachment:fixed; ">
        <div class="row" style="background:rgba(255,255,255,0.5); padding:30px 0px; " >
            <div class="col-sm-3"></div>
            <div class="col-sm-6" style="background:rgba(255,255,255,0.5); box-shadow:0px 0px 15px gray;"   >
                
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <br />
                        <br />
                        <h3 class="panel-title"><strong>OTP Verification for Registration </strong></h3>

                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <span class="text-danger" style="font-size:16px; font-weight:bold;" > We have sent you a OTP (One Time Verification) Code to your registered mobile number - <br /> <asp:Label runat="server" ID="otpmobile">+91 9867564543</asp:Label>. Please enter the same 6 digits code to proceed for Registration. </span>
                            <br /><span class="text-danger" style="font-size:15px;" > if not delivered then <asp:LinkButton runat="server" OnClick="Unnamed_ServerClick" CausesValidation="false" >click here to resend</asp:LinkButton>  </span>
                        </div>
                        <div class="form-group">

                            <label  >Enter OTP Code</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="true" runat="server" ErrorMessage="OTP Code is Required!" ControlToValidate="TextBox1" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" SetFocusOnError="true" ErrorMessage="OTP Code must contain 6 digits only!" ControlToValidate="TextBox1" ValidationExpression="^[0-9]{6}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter 6 Digits OTP Code" runat="server"></asp:TextBox>

                        </div>

                        <asp:Button ID="Button1" runat="server" Text="Verify OTP" OnClick="Button1_Click" CssClass="btn btn-success btn-lg" />
                        
                        <br />
                        <br />

                    </div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
</asp:Content>


