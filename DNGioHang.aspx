<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChinh.master" AutoEventWireup="true" CodeFile="DNGioHang.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 193px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 58%; height: 80px; background-color:white">
        <tr>
            <td colspan="2" style="color:darkblue; font-size: larger; font-weight: bold; text-align: center">
                <br />
                <br />
                BẠN PHẢI ĐĂNG NHẬP ĐỂ MUA HÀNG</td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-weight: bold; text-align: right">Tên đăng nhập:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtDN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDN" ErrorMessage="Chưa nhập tên đăng nhập!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-weight: bold; text-align: right">Mật khẩu:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMK" ErrorMessage="Chưa nhập mật khẩu!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Đăng nhập" />
&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

