<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageDoctors.aspx.cs" Inherits="Admin_ManageDoctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Manage Doctors</h1>
    </div>
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <h3>Add New Doctor</h3> <br />
            <div class="form-group">
                <label>Enter Doctor Name: </label>
                <asp:TextBox runat="server" ID="txtdrname" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Enter Doctor Experience: </label>
                <asp:TextBox runat="server" ID="txtdrexp" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Enter Doctor Fee: </label>
                <asp:TextBox runat="server" ID="txtdrfee" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Enter Doctor Specialization: </label>
                <asp:TextBox runat="server" ID="txtdrsp" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Upload Doctor Photo: </label>
                <asp:FileUpload runat="server" ID="uploaddrpic" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Button runat="server" ID="btnadddr" Text="Add Doctor" OnClick="btnadddr_Click" CssClass="btn btn-success" />
            </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
           <h3>All Doctors</h3>
           
            <asp:GridView runat="server" ID="griddoctor" EmptyDataText="No Records Found." CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                    <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
                    <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                    <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" Visible="false" />
                    <asp:ImageField DataImageUrlField="photo" ControlStyle-Height="100px" HeaderText="Photo" DataImageUrlFormatString="~/Admin/DrPhoto/{0}" >
<ControlStyle Height="100px"></ControlStyle>
                    </asp:ImageField>
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnection %>" DeleteCommand="DELETE FROM [Doctors] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Doctors] ([Name], [Experience], [Fee], [Specialization], [Photo]) VALUES (@Name, @Experience, @Fee, @Specialization, @Photo)" SelectCommand="SELECT * FROM [Doctors] ORDER BY [Id] DESC" UpdateCommand="UPDATE [Doctors] SET [Name] = @Name, [Experience] = @Experience, [Fee] = @Fee, [Specialization] = @Specialization, [Photo] = @Photo WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Experience" Type="String" />
                    <asp:Parameter Name="Fee" Type="String" />
                    <asp:Parameter Name="Specialization" Type="String" />
                    <asp:Parameter Name="Photo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Experience" Type="String" />
                    <asp:Parameter Name="Fee" Type="String" />
                    <asp:Parameter Name="Specialization" Type="String" />
                    <asp:Parameter Name="Photo" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>

