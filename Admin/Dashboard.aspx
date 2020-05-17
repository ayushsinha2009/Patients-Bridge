<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Admin Dashboard</h1>
    </div>

      <div class="row">
        
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/da.png" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Manage All Patient</h5>
                    <p class="card-text"> </p>
                    <a href="#" class="btn btn-primary">Manage Now</a>
                </div>
            </div>
        </div>
          <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/da.png" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Manage All Appointments</h5>
                    <p class="card-text"> </p>
                    <a href="#" class="btn btn-primary">Manage Now</a>
                </div>
            </div>
        </div>
          <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/da.png" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Manage Doctors</h5>
                    <p class="card-text"> </p>
                    <a href="#" class="btn btn-primary">Manage Now</a>
                </div>
            </div>
        </div>
          <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/da.png" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">View Admin Profile</h5>
                    <p class="card-text"> </p>
                    <a href="#" class="btn btn-primary">View Now</a>
                </div>
            </div>
        </div>

    </div>



</asp:Content>

