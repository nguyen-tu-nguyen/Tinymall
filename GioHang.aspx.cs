using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["gh"] == null)
        {
            Label6.Text = "Bạn chưa chọn sản phẩm";
            btThanhtoan.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
        }
        else
        {
            Label6.Visible = false;
            if (!IsPostBack)
            {
                if (Session["gh"] != null)
                {
                    DataTable dt = (DataTable)Session["gh"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    int i = 0;
                    foreach (DataRow ds in dt.Rows)
                    {
                        int t = (int)ds["TongTien"];
                        i = i + t;
                    }
                    Label5.Text = i + "";
                }
            }
        }

    }
    protected void btThanhtoan_Click(object sender, ImageClickEventArgs e)
    {
       
        if (Session["tendn"] != null)
        {
            
            Response.Redirect("~/HoaDon.aspx");
        }
        else
        {
            Response.Redirect("~/DNGioHang.aspx");
        }
        

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        DataTable dt = (DataTable)Session["gh"];
        if (e.CommandName == "capnhat")
        {
            int vt = Convert.ToInt32(e.CommandArgument);
            int sl = int.Parse(((TextBox)GridView1.Rows[vt].Cells[3].FindControl("TextBox1")).Text);
            dt.Rows[vt]["SoLuong"] = sl;
            int i = 0;
            foreach (DataRow ds in dt.Rows)
            {
                int t = (int)ds["TongTien"];
                i = i + t;
            }
            Label5.Text = i + "";

        }
        Session["gh"] = dt;
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}