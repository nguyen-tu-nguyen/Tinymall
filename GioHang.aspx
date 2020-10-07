<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChinh.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align:center; vertical-align: middle; margin-left: 500px;">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="700px" Height="361px" OnRowCommand="GridView1_RowCommand " BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:ImageField DataAlternateTextField="Hinh" DataImageUrlField="Hinh" HeaderText="Hình ảnh">
                <ControlStyle Height="100px" Width="100px" />
                <HeaderStyle Height="20px" />
                <ItemStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="MaSP" HeaderText="Mã Sản phẩm" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên Sản phẩm">
            <ControlStyle Width="300px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Text='<%# Eval("SoLuong") %>' Width="64px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Gia" HeaderText="Giá" />
            <asp:BoundField DataField="TongTien" HeaderText="Tổng tiền" />
            <asp:ButtonField Text="Cập nhật" CommandName="capnhat" >
            <HeaderStyle Width="30px" />
            </asp:ButtonField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" Height="10px" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
</p>
    <p style="text-align:left;background-color:white; vertical-align: middle;">
        <br />

        <asp:Label ID="Label4" runat="server" BackColor="White" ForeColor="#FF6600" Text="Tổng hóa đơn: "></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Names="#9Slide03 Comfortaa" ForeColor="#FF6600" Font-Bold="True"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ql %>"></asp:SqlDataSource>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
</p>
    <p style="text-align:left; vertical-align: middle; margin-left: 200px; padding-left: 200px;">
        <asp:ImageButton ID="btThanhtoan" runat="server" ImageUrl="~/Image/Thanhtoan.PNG" OnClick="btThanhtoan_Click" Width="280px" BorderColor="Yellow" BorderWidth="7px" />
</p>
<p style="text-align:left; vertical-align: middle; margin-left: 200px; padding-left: 200px;">
        &nbsp;</p>
</asp:Content>

 