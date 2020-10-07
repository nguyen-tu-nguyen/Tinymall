using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void DangKy_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        string strcon = "Data Source=LATITUDE;Initial Catalog=Tinymall;User=sa;Password=sa2012";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmdDem = new SqlCommand();
        cmdDem.Connection = con;
        cmdDem.CommandText = "SELECT COUNT (*) FROM KHACHHANG WHERE TENDN='" + txtDN.Text+"'";
        int dem = (int)cmdDem.ExecuteScalar();
        if (dem != 0)
            Label1.Text = "Đã trùng tên đăng nhập, hãy chọn một tên đăng nhập khác";
        else
        {
            string strcmd = "INSERT INTO KHACHHANG(TENKH, DIACHI, GIOITINH, TENDN, MATKHAU)";
            strcmd = strcmd + " values(@tenkh,@diachi,@gioitinh,@tendn,@matkhau)";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = strcmd;

            SqlParameter parTen = cmd.CreateParameter();
            parTen.ParameterName = "@tenkh";
            parTen.Value = txtHoTen.Text;
            cmd.Parameters.Add(parTen);

            SqlParameter parDiaChi = cmd.CreateParameter();
            parDiaChi.ParameterName = "@diachi";
            parDiaChi.Value = txtDiaChi.Text;
            cmd.Parameters.Add(parDiaChi);

            string gioitinh;
            if (RadioButtonList1.SelectedItem.Text=="1")
                gioitinh = "Nam";
            else
                gioitinh = "Nữ";

            SqlParameter parGT = cmd.CreateParameter();
            parGT.ParameterName = "@gioitinh";
            parGT.Value = gioitinh;
            cmd.Parameters.Add(parGT);

            SqlParameter parDN = cmd.CreateParameter();
            parDN.ParameterName = "@tendn";
            parDN.Value = txtDN.Text;
            cmd.Parameters.Add(parDN);

            SqlParameter parMK = cmd.CreateParameter();
            parMK.ParameterName = "@matkhau";
            parMK.Value = txtMK.Text;
            cmd.Parameters.Add(parMK);

            int kq = cmd.ExecuteNonQuery();
            if (kq != 0)
                Label1.Text = "Đăng ký thành công";
            else
                Label1.Text = "Đăng ký thất bại";
        }
        con.Close();
      
    }
}