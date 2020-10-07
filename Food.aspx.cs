using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int masp = int.Parse(e.CommandArgument.ToString());
        String tensp = ((Label)e.Item.FindControl("Label5")).Text;
        String giasp = ((Label)e.Item.FindControl("Label4")).Text;
        String anh = ((Image)e.Item.FindControl("Image1")).ImageUrl;
        if (Session["gh"] != null)
        {
            DataTable arr = (DataTable)Session["gh"];
            int vt = -1;
            foreach (DataRow dr in arr.Rows)
            {
                int i = arr.Rows.IndexOf(dr);
                if (dr["MaSP"].Equals(masp))
                {
                    vt = i;
                }
            }
            if (vt == -1)
            {
                int soluong = 1;
                int tongtien = soluong * int.Parse(giasp);
                arr.Rows.Add(masp, tensp, giasp, soluong, tongtien, anh);
            }
            else
            {
                int soluong = (int)arr.Rows[vt]["SoLuong"] + 1;
                arr.Rows[vt]["SoLuong"] = soluong;
            }
        }
        else ///chua có giỏ hàng
        {
            //khỏi tạo DataTable
            DataTable tbGioHang = new DataTable();
            tbGioHang.Rows.Clear();
            tbGioHang.Columns.Clear();
            tbGioHang.Columns.Add("MaSP", typeof(int));
            tbGioHang.Columns.Add("TenSP", typeof(string));
            tbGioHang.Columns.Add("Gia", typeof(int));
            tbGioHang.Columns.Add("SoLuong", typeof(int));
            tbGioHang.Columns.Add("TongTien", typeof(int), "SoLuong * Gia");
            tbGioHang.Columns.Add("Hinh", typeof(string));

            int soluong = 1;
            int tongtien = soluong * int.Parse(giasp);
            tbGioHang.Rows.Add(masp, tensp, giasp, soluong, tongtien, anh);//thông tin lấy từ sản phẩm được chọn
            //luu vào Session
            Session["gh"] = tbGioHang;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "1")
            SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE MALOAI=2 ORDER BY TENSP ASC";
        else if (DropDownList1.SelectedValue == "2")
            SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE MALOAI=2 ORDER BY TENSP DESC";
        else if (DropDownList1.SelectedValue == "3")
            SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE MALOAI=2 ORDER BY DONGIA ASC";
        else
            SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE MALOAI=2 ORDER BY DONGIA DESC";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE TENSP LIKE '%" + txtTim.Text + "%' AND  MALOAI=2";
    }
}