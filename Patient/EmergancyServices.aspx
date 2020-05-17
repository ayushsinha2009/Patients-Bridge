<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMasterPage.master" AutoEventWireup="true" CodeFile="EmergancyServices.aspx.cs" Inherits="Patient_EmergancyServices" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $("#sidenav a").eq(3).addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2"> Emergancy Services </h1>

    </div>
   
    <div class="row">
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/dept-1.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Emergancy Service 1</h5>
                    <p class="card-text">If you need this emergancy service then you have to pay 100 INR for this.</p>
                    <a href="#" class="btn btn-primary">Pay Now</a>
                </div>
            </div>
        </div>

        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/dept-1.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Emergancy Service 2</h5>
                    <p class="card-text">If you need this emergancy service then you have to pay 100 INR for this.</p>
                    <a href="#" class="btn btn-primary">Pay Now</a>
                </div>
            </div>
        </div>

        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/dept-1.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Emergancy Service 3</h5>
                    <p class="card-text">If you need this emergancy service then you have to pay 100 INR for this.</p>
                    <a href="#" class="btn btn-primary">Pay Now</a>
                </div>
            </div>
        </div>

        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img src="../images/dept-1.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="card-title">Emergancy Service 4</h5>
                    <p class="card-text">If you need this emergancy service then you have to pay 100 INR for this.</p>
                    <a href="#" class="btn btn-primary">Pay Now</a>
                </div>
            </div>
        </div>

    </div>


</asp:Content>

