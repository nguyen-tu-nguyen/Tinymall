using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string strcon = "Data Source=LATITUDE;Initial Catalog=Tinymall;User=sa;Password=sa2012";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        int makh;
        SqlCommand cmdDem = new SqlCommand();
        cmdDem.Connection = con;
        cmdDem.CommandText = "SELECT COUNT (*) FROM KHACHHANG WHERE TENDN='"+txtDN.Text+"' and MATKHAU='"+txtMK.Text+"'";
        int dem = (int)cmdDem.ExecuteScalar();
        if (dem != 0)
        {
            Session.Add("tendn", txtDN.Text);
            cmdDem.CommandText = "SELECT MAKH FROM KHACHHANG WHERE TENDN ='" + txtDN.Text + "'";
            makh= (int) cmdDem.ExecuteScalar();
            if(makh != 0)
                Session.Add("Makh", makh);
            Response.Redirect("~/HoaDon.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Sai tên đăng nhập hoặc mật khẩu!";
        }
        
    }
}