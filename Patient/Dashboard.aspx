<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Patient_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $("#sidenav a").eq(0).addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Patient Dashboard</h1>


    </div>
    
    <div class="row">
        
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/dashboard-icon-8.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Book New Appointment</h5>
                    <p class="card-text"> </p>
                    <a href="BookAppointment.aspx" class="btn btn-primary">Book Now</a>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/dashboard-icon-8.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">View Booked Appointments</h5>
                    <p class="card-text"> </p>
                    <a href="ViewBookedAppointments.aspx" class="btn btn-primary">View Now</a>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/dashboard-icon-8.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Emergancy Medical Services</h5>
                    <p class="card-text"> </p>
                    <a href="EmergancyServices.aspx" class="btn btn-primary">Use Now</a>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/dashboard-icon-8.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">View Patient Profile</h5>
                    <p class="card-text"> </p>
                    <a href="ViewProfile.aspx" class="btn btn-primary">View Now</a>
                </div>
            </div>
        </div>


    </div>



</asp:Content>

