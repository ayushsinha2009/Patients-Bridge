<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageAllPatients.aspx.cs" Inherits="Admin_ManageAllPatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Manage All Patients</h1>
    </div>
    <div class="row">
        <div class="col-sm-12 table-responsive">
            <h3>Pending OTP Verification</h3>
            <asp:GridView runat="server" CssClass="table table-bordered" ID="GridView1" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowPaging="True" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" Visible="false" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="SpecialMedicalCondition" HeaderText="Special Medical Condition" SortExpression="SpecialMedicalCondition" />
                    <asp:BoundField DataField="OTP" Visible="false" HeaderText="OTP" SortExpression="OTP" />
                    <asp:CheckBoxField DataField="OTPStatus" HeaderText="OTP Status" SortExpression="OTPStatus" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />

            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnection %>" DeleteCommand="DELETE FROM [RegistrationTbl] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RegistrationTbl] ([Name], [Age], [Mobile], [Gender], [Email], [Password], [SpecialMedicalCondition], [OTP], [OTPStatus], [Date], [Time]) VALUES (@Name, @Age, @Mobile, @Gender, @Email, @Password, @SpecialMedicalCondition, @OTP, @OTPStatus, @Date, @Time)" SelectCommand="SELECT * FROM [RegistrationTbl] WHERE ([OTPStatus] = @OTPStatus) ORDER BY [Id] DESC" UpdateCommand="UPDATE [RegistrationTbl] SET [Name] = @Name, [Age] = @Age, [Mobile] = @Mobile, [Gender] = @Gender, [Email] = @Email, [Password] = @Password, [SpecialMedicalCondition] = @SpecialMedicalCondition, [OTP] = @OTP, [OTPStatus] = @OTPStatus, [Date] = @Date, [Time] = @Time WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="SpecialMedicalCondition" Type="String" />
                    <asp:Parameter Name="OTP" Type="String" />
                    <asp:Parameter Name="OTPStatus" Type="Boolean" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="False" Name="OTPStatus" Type="Boolean" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="SpecialMedicalCondition" Type="String" />
                    <asp:Parameter Name="OTP" Type="String" />
                    <asp:Parameter Name="OTPStatus" Type="Boolean" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <hr />
            <h3>OTP Verified Patients</h3>
            <asp:GridView runat="server" CssClass="table table-bordered" ID="GridView2" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Horizontal" AllowPaging="True" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" Visible="false" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="SpecialMedicalCondition" HeaderText="Special Medical Condition" SortExpression="SpecialMedicalCondition" />
                    <asp:BoundField DataField="OTP" Visible="false" HeaderText="OTP" SortExpression="OTP" />
                    <asp:CheckBoxField DataField="OTPStatus" HeaderText="OTP Status" SortExpression="OTPStatus" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />

            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnection %>" DeleteCommand="DELETE FROM [RegistrationTbl] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RegistrationTbl] ([Name], [Age], [Mobile], [Gender], [Email], [Password], [SpecialMedicalCondition], [OTP], [OTPStatus], [Date], [Time]) VALUES (@Name, @Age, @Mobile, @Gender, @Email, @Password, @SpecialMedicalCondition, @OTP, @OTPStatus, @Date, @Time)" SelectCommand="SELECT * FROM [RegistrationTbl] WHERE ([OTPStatus] = @OTPStatus) ORDER BY [Id] DESC" UpdateCommand="UPDATE [RegistrationTbl] SET [Name] = @Name, [Age] = @Age, [Mobile] = @Mobile, [Gender] = @Gender, [Email] = @Email, [Password] = @Password, [SpecialMedicalCondition] = @SpecialMedicalCondition, [OTP] = @OTP, [OTPStatus] = @OTPStatus, [Date] = @Date, [Time] = @Time WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="SpecialMedicalCondition" Type="String" />
                    <asp:Parameter Name="OTP" Type="String" />
                    <asp:Parameter Name="OTPStatus" Type="Boolean" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="True" Name="OTPStatus" Type="Boolean" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="SpecialMedicalCondition" Type="String" />
                    <asp:Parameter Name="OTP" Type="String" />
                    <asp:Parameter Name="OTPStatus" Type="Boolean" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>
    </div>


</asp:Content>

