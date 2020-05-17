<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMasterPage.master" AutoEventWireup="true" CodeFile="BookAppointment.aspx.cs" Inherits="Patient_BookAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/bootstrap-datepicker.js"></script>
    <link href="../css/bootstrap-datepicker.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $("#sidenav a").eq(1).addClass("active");

            $('.appointment_date').datepicker({
                'format': 'd/m/yyyy',
                'autoclose': true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Book Appointment</h1>
    </div>

     <div class="row">

            <div class="col-sm-3"></div>
            <div class="col-sm-6">

                <div class="form-group">
                    <label>Enter Patient Name </label>
                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" autocomplete="off" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Enter Patient Age </label>
                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" autocomplete="off" ></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label>Enter Patient Gender </label>
                    <asp:RadioButtonList runat="server" ID="gender" RepeatDirection="Horizontal" CssClass="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group">
                    <label>Select Doctor </label>
                    <asp:DropDownList runat="server" ID="doctor" AppendDataBoundItems="true" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="FullName" DataValueField="Name">
                        <asp:ListItem Value="">-Select Doctor-</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnection %>" SelectCommand="SELECT [Id],[Name], [Name]+ ' (' + [Specialization] + ')' as [FullName] FROM [Doctors] ORDER BY [Name]"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label>Enter Appointment Date </label>
                    <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control appointment_date" autocomplete="off" ></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Enter Problem in Description </label>
                    <asp:TextBox runat="server" TextMode="MultiLine" ID="TextBox4" CssClass="form-control" autocomplete="off" ></asp:TextBox>
                </div>
               <div class="form-group">
                    <label>Enter Patient Mobile </label>
                    <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control" autocomplete="off" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button runat="server" ID="btnbook" Text="Book Appointment" OnClick="btnbook_Click" CssClass="btn btn-success" />
                </div>

            </div>
            <div class="col-sm-3"></div>

        </div>

</asp:Content>

