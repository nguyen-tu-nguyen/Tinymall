<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChinh.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="PC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
<p style="background-color:lightyellow; width: 1179px; margin-right: 0px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTim" runat="server" style="margin-top: 0px" Width="225px" Height="30px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" OnClick="Button4_Click" Text="Tìm" Width="70px" />
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
               
                <asp:CommandField HeaderText="Manage " ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ql %>"
            SelectCommand="SELECT * FROM SANPHAM"
            UpdateCommand ="UPDATE SANPHAM SET MASP = @Masp, TENSP = @Tensp, DONGIA = @DONGIA,HINHANH = @HINHANH, MALOAI = @MALOAI"
            >
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Masp" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="Tensp" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="Dongia" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="Hinhanh" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="Maloai" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

