<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChinh.master" AutoEventWireup="true" CodeFile="HoaDon.aspx.cs" Inherits="HoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" Width="569px" ForeColor="#333333" Height="155px" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MAHD" HeaderText="Mã Hóa đơn" />
            <asp:BoundField DataField="TENKH" HeaderText="Tên khách hàng" />
            <asp:BoundField DataField="NGAYLAP" HeaderText="Ngày lập" />
            <asp:BoundField DataField="THANHTIEN" HeaderText="Thành tiền" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ql %>"
            ></asp:SqlDataSource>
<asp:Label ID="Label4" runat="server" Text="Label" BackColor="White"></asp:Label>
    <br />
<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Thanh toán" />
<br />
</asp:Content>

