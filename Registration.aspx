<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterPage.master"  AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>
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
        <div class="row"  style="background:rgba(255,255,255,0.5); padding:30px 0px; " >
            <div class="col-sm-3"></div>
            <div class="col-sm-6" style="background:rgba(255,255,255,0.5); box-shadow:0px 0px 15px gray;"   >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <br />
                        <br />
                        <h3 class="panel-title"><strong>Patient Registration </strong></h3>
                    </div>
                    <div class="panel-body">

                        <div class="form-group">
                            <label  >Enter Name</label>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="true" runat="server" ErrorMessage="Name is Required!" ControlToValidate="TextBox1" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" SetFocusOnError="true" ErrorMessage="Name must contain only alphabets!" ControlToValidate="TextBox1" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label  >Enter Age</label>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="true" runat="server" ErrorMessage="Age is Required!" ControlToValidate="TextBox2" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" SetFocusOnError="true" ErrorMessage="Age must contain only numbers!" ControlToValidate="TextBox2" ValidationExpression="^[0-9]+$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label  >Enter Mobile</label>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="true" runat="server" ErrorMessage="Mobile is Required!" ControlToValidate="TextBox3" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" SetFocusOnError="true" ErrorMessage="Mobile must contain only 10 numbers!" ControlToValidate="TextBox3" ValidationExpression="^[0-9]{10}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Enter Mobile" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label  >Select Genders</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="true" runat="server" ErrorMessage="Gender is Required!" ControlToValidate="RadioButtonList1" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div class="form-group">
                            <label  >Enter Email</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="true" runat="server" ErrorMessage="Email is Required!" ControlToValidate="TextBox4" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" SetFocusOnError="true" ErrorMessage="Invalid Email ID Format!" ControlToValidate="TextBox4" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ForeColor="Red" ></asp:RegularExpressionValidator>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Enter Email" TextMode="Email" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label  >Enter Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="true" runat="server" ErrorMessage="Password is Required!" ControlToValidate="TextBox5" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox>
                            
                        </div>

                        <div class="form-group">
                            <label  >Confirm Password</label> <asp:CompareValidator ID="CompareValidator1" runat="server" Type="String" ControlToValidate="TextBox6" ControlToCompare="TextBox5" ErrorMessage="Password Not Matched!" ForeColor="Red"></asp:CompareValidator>
                            <asp:TextBox ID="TextBox6" CssClass="form-control" placeholder="Re-enter Password" TextMode="Password" runat="server"></asp:TextBox>
                            
                        </div>

                        <div class="form-group">
                            <label  >Special Medical Condition</label>  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="true" runat="server" ErrorMessage="Special Medical Condition is Required!" ControlToValidate="TextBox7" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox7" CssClass="form-control" placeholder="Enter Special Medical Condition" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>

                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn btn-success btn-lg" />


                        <br />
                        <br />
                    </div>
                </div>

            </div>
            <div class="col-sm-3"></div>


        </div>

    </div>




</asp:Content>

