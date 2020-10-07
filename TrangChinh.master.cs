using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChinh : System.Web.UI.MasterPage
{
    static DataTable tbGiohang = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
       
            if (Session["tendn"] != null)
            {
                Button1.Visible = true;
                Label1.Visible = false;
                
                Label2.Visible = false;
            }
            else
            {
                Label1.Visible = true;
                Button1.Visible = false;
                Label2.Visible = true;
                
            }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/TrangChu.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/TrangChu.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
            if (Session["gh"] != null)
                Response.Redirect("~/HoaDon.aspx");
            else
                Response.Redirect("~/TrangChu.aspx");
        
    }
}
