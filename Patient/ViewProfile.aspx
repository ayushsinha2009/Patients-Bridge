<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMasterPage.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Patient_ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $("#sidenav a").eq(4).addClass("active");
        });
    </script>
    <style>
        .table {
            width:100% !important;
            border-color:black !important;
        }
        table tr td
        {
            border-color:black !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Patient Profile</h1>

    </div>

    <div class="row">

        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <asp:DetailsView CssClass="table table-bordered" ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="SpecialMedicalCondition" HeaderText="SpecialMedicalCondition" SortExpression="SpecialMedicalCondition" />
                    <asp:CheckBoxField DataField="OTPStatus" HeaderText="OTPStatus" SortExpression="OTPStatus" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-info" />
                </Fields>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnection %>" DeleteCommand="DELETE FROM [RegistrationTbl] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RegistrationTbl] ([Name], [Age], [Mobile], [Gender], [SpecialMedicalCondition], [OTPStatus], [Date], [Time]) VALUES (@Name, @Age, @Mobile, @Gender, @SpecialMedicalCondition, @OTPStatus, @Date, @Time)" SelectCommand="SELECT [Id], [Name], [Age], [Mobile], [Gender], [SpecialMedicalCondition], [OTPStatus], [Date], [Time] FROM [RegistrationTbl] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [RegistrationTbl] SET [Name] = @Name, [Age] = @Age, [Mobile] = @Mobile, [Gender] = @Gender, [SpecialMedicalCondition] = @SpecialMedicalCondition, [OTPStatus] = @OTPStatus, [Date] = @Date, [Time] = @Time WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="SpecialMedicalCondition" Type="String" />
                    <asp:Parameter Name="OTPStatus" Type="Boolean" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="Email" SessionField="PatientEmail" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="SpecialMedicalCondition" Type="String" />
                    <asp:Parameter Name="OTPStatus" Type="Boolean" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>



        </div>
        <div class="col-sm-3"></div>

    </div>


</asp:Content>

