<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageAppointments.aspx.cs" Inherits="Admin_ManageAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function confirmapp(id)
        {
            $("#confirmmodal").modal("show");
            $("#<%= appid.ClientID %>").val(id);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Manage Appointments</h1>
    </div>

    <div class="modal fade" id="confirmmodal" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Confirm Appointment</h4>
                    <button type="button" class="close" data-dismiss="modal" ><span> &times; </span></button>
                </div>
                <div class="modal-body">
                    <label>Select Timing: </label> <br />
                    <div class="row">
                        <div class="col-sm-4" >
                            <asp:DropDownList runat="server" ID="ddlhour" CssClass="form-control" required >
                                <asp:ListItem Value="">-Hour-</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                                <asp:ListItem>05</asp:ListItem>
                                <asp:ListItem>06</asp:ListItem>
                                <asp:ListItem>07</asp:ListItem>
                                <asp:ListItem>08</asp:ListItem>
                                <asp:ListItem>09</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-4" >
                            <asp:DropDownList runat="server" ID="ddlminute" CssClass="form-control"  required  >
                                <asp:ListItem Value="">-Minutes-</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                         <div class="col-sm-4" >
                            <asp:DropDownList runat="server" ID="ddltiming" CssClass="form-control"  required  >
                                <asp:ListItem Value="">-Select-</asp:ListItem>
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4 text-center">
                            <asp:Button runat="server" ID="btnconfirm" Text="Confirm" CssClass="btn btn-warning" OnClick="btnconfirm_Click" />
                        </div>
                        <div class="col-sm-4" style="visibility:hidden;">
                            <asp:TextBox runat="server" CssClass="form-control" ID="appid" />
                        </div>

                    </div>

                </div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <h3>Pending Appointments</h3>
            <asp:GridView runat="server" CssClass="table table-bordered" ID="GridView1" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Doctor" HeaderText="Doctor Name" SortExpression="Doctor" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Time" HeaderText="Time" Visible="false" SortExpression="Time" />
                    <asp:BoundField DataField="Status" HeaderText="Status" Visible="false" SortExpression="Status" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile"  SortExpression="Mobile" />
                    <asp:BoundField DataField="UserEmail" HeaderText="Patient Email" SortExpression="UserEmail" />
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <button type="button" class="btn btn-primary" onclick='confirmapp(<%# Eval("Id") %>)'  >Confirm</button>
                        </ItemTemplate>
                    </asp:TemplateField>
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnection %>" DeleteCommand="DELETE FROM [Appointment] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Appointment] ([Name], [Age], [Gender], [Doctor], [Date], [Description], [Time], [Status], [Mobile], [UserEmail]) VALUES (@Name, @Age, @Gender, @Doctor, @Date, @Description, @Time, @Status, @Mobile, @UserEmail)" SelectCommand="SELECT * FROM [Appointment] WHERE ([Status] = @Status) ORDER BY [Id] DESC" UpdateCommand="UPDATE [Appointment] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender, [Doctor] = @Doctor, [Date] = @Date, [Description] = @Description, [Time] = @Time, [Status] = @Status, [Mobile] = @Mobile, [UserEmail] = @UserEmail WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Doctor" Type="String" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Doctor" Type="String" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <hr />

            <h3>Confirmed Appointments</h3>
            <asp:GridView runat="server" CssClass="table table-bordered" ID="GridView2" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Horizontal" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Doctor" HeaderText="Doctor Name" SortExpression="Doctor" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Time" HeaderText="Time" Visible="false" SortExpression="Time" />
                    <asp:BoundField DataField="Status" HeaderText="Status" Visible="false" SortExpression="Status" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile"  SortExpression="Mobile" />
                    <asp:BoundField DataField="UserEmail" HeaderText="Patient Email" SortExpression="UserEmail" />
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

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnection %>" DeleteCommand="DELETE FROM [Appointment] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Appointment] ([Name], [Age], [Gender], [Doctor], [Date], [Description], [Time], [Status], [Mobile], [UserEmail]) VALUES (@Name, @Age, @Gender, @Doctor, @Date, @Description, @Time, @Status, @Mobile, @UserEmail)" SelectCommand="SELECT * FROM [Appointment] WHERE ([Status] = @Status) ORDER BY [Id] DESC" UpdateCommand="UPDATE [Appointment] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender, [Doctor] = @Doctor, [Date] = @Date, [Description] = @Description, [Time] = @Time, [Status] = @Status, [Mobile] = @Mobile, [UserEmail] = @UserEmail WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Doctor" Type="String" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Confirmed" Name="Status" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Doctor" Type="String" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>

</asp:Content>

