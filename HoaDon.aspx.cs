using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class HoaDon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = (DataTable)Session["gh"];
            int i = 0;
            foreach (DataRow ds in dt.Rows)
            {
                int t = (int)ds["TongTien"];
                i = i + t;
            }
            Label4.Text = "Số tiền bạn phải thanh toán là: " + i + " VNĐ";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label4.Visible = true;
        int makh = int.Parse(Session["Makh"].ToString());
        string strcon = "Data Source=Tinymall;Initial Catalog=Tinymall;User=sa;Password=sa2012";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand cmdHD = new SqlCommand();
        cmdHD.Connection = con;

        cmdHD.CommandText = "Insert into HOADON (NGAYLAP, MAKH) VALUES (GETDATE(), " + makh + ")";
        int dem = cmdHD.ExecuteNonQuery();
        if (dem != 0)
        {
            SqlCommand cmdMHD = new SqlCommand();
            cmdMHD.Connection = con;
            cmdMHD.CommandText = "select MAX(MAHD) FROM HOADON";
            int mahd = (int)cmdMHD.ExecuteScalar();
            SqlCommand cmdCT = new SqlCommand();
            cmdCT.Connection = con;
            DataTable dt = (DataTable)Session["gh"];
            foreach (DataRow dr in dt.Rows)
            {
                cmdCT.Parameters.Clear();
                SqlParameter parMaHD = cmdCT.CreateParameter();
                parMaHD.ParameterName = "@mahd";
                SqlParameter parmasp = cmdCT.CreateParameter();
                parmasp.ParameterName = "@masp";
                SqlParameter parsl = cmdCT.CreateParameter();
                parsl.ParameterName = "@soluong";
                cmdCT.CommandText = "insert into CHITIETHD(MAHD, MASP, SOLUONG) values(@mahd,@masp,@soluong)";

                int masp = int.Parse(dr["MaSP"].ToString());
                int soluong = int.Parse(dr["SoLuong"].ToString());

                parMaHD.Value = mahd;
                cmdCT.Parameters.Add(parMaHD);
                parmasp.Value = masp;
                cmdCT.Parameters.Add(parmasp);
                parsl.Value = soluong;
                cmdCT.Parameters.Add(parsl);
                int t = cmdCT.ExecuteNonQuery();
                if (t != 0)
                {
                    String ma = Session["Makh"].ToString();
                    SqlDataSource1.SelectCommand = "SELECT TOP 1 MAHD,TENKH, NGAYLAP, THANHTIEN FROM HOADON, KHACHHANG WHERE HOADON.MAKH=KHACHHANG.MAKH ORDER BY MAHD DESC ";
                    Session["gh"] = null;
                    Label4.Text = "Thanh toán thành công";
                    Button3.Visible = false;
                    
                }
                
            }
        }
        else

            Label4.Text = "Thanh toán thất bại";

    }
}