<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChinh.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
       
    </p>
    
    <div style="border:dotted;margin:20px;background-color:white;padding-bottom:20px" >

        <p style="color:red;font-family:'Times New Roman';font-weight:bold;font-size:40px" >FOOD & DRINK</p>
        <p style  ="font-weight:bold;color:orange">Update món mới tháng 5 - Hè ăn gì và Hè uống gì?</p>
        <p>
        <asp:HyperLink runat="server" ID="HyperLink2" Target="_blank" NavigateUrl="Food.aspx">Hóng đồ ăn >></asp:HyperLink>
            <br />
            <asp:HyperLink runat="server" ID="HyperLink3" Target="_blank" NavigateUrl="Drink.aspx">Hóng nước >></asp:HyperLink>
        
        </p>
        
    </div>
    
     <div style="border:groove;margin:20px;background-color:white;padding-bottom:10px" >

        <p style="color:red;font-family:'Times New Roman';font-weight:bold;font-size:40px" >HOT DEAL</p>
        <p style="font-weight:bold;font-size:large">Thứ tư vui vẻ - mua 1 tặng 1 từ khung giờ 10:00 đến 14:30</p>
    </div>
    <div style="border:dashed;margin:20px;background-color:white;padding-bottom:20px" >

        <p style="color:red;font-family:'Times New Roman';font-weight:bold;font-size:40px" >TUYỂN DỤNG</p>
        <p>Vì nhu cầu mở rộng thêm chi nhánh 2, Tinymall cần tuyển thêm nhân sự...</p><asp:HyperLink runat="server" ID="details" Target="_blank" NavigateUrl="~/Image/Tuyendung.PNG">chi tiết >></asp:HyperLink>
    </div>
      <div>


    </div>
      <div>


    </div>
      <div>


    </div>
      <div>


    </div>
    <p>
    </p>
    <br />
    <p>
&nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

