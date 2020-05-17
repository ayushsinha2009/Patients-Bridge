<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Change Password</h1>


    </div>

    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            
            <div class="form-group">
                <label>Enter Old Password</label>
                <asp:TextBox runat="server" ID="OldPass" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Enter New Password</label>
                <asp:TextBox runat="server" ID="NewPass" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Re-Enter New Password</label>
                <asp:TextBox runat="server" ID="ReNewPass" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button runat="server" ID="btnchange"  Text="Change Password" CssClass="btn btn-success" OnClick="btnchange_Click" />
            </div>

        </div>
        <div class="col-sm-3"></div>
    </div>

</asp:Content>

