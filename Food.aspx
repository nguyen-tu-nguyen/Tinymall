<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChinh.master" AutoEventWireup="true" CodeFile="Food.aspx.cs" Inherits="PC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
<p style="background-color:lightyellow; width: 1179px; margin-right: 0px;">
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Size="Large">
            <asp:ListItem Selected="True" Value="1">Tăng dần theo tên</asp:ListItem>
            <asp:ListItem Value="2">Giảm dần theo tên</asp:ListItem>
            <asp:ListItem Value="3">Tăng dần theo giá</asp:ListItem>
            <asp:ListItem Value="4">Giảm dần theo giá</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text=" Xem" BackColor="#66FF33" Font-Bold="True" Font-Size="Large" ForeColor="Red" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTim" runat="server" style="margin-top: 0px" Width="225px" Height="30px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" OnClick="Button4_Click" Text="Tìm" Width="70px" />
        <br />
    </p>
    <p>
        <asp:DataList BackColor="White" ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" CellPadding="10" CellSpacing="10" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Image/"+Eval("HINHANH") %>' Height="174px" Width="207px" />
<br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Violet" Text='<%# Eval("DONGIA") %>'></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Violet" Text='<%# " VNĐ" %>'></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("TENSP") %>'></asp:Label>
                <br />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/giohang.PNG" Width="100px" CommandArgument='<%# Eval("MaSP") %>' />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ql %>"
            SelectCommand="SELECT * FROM SANPHAM WHERE MALOAI=2"
            ></asp:SqlDataSource>
    </p>
</asp:Content>

