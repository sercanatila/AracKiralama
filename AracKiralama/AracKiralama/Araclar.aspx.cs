using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AracKiralama
{
    public partial class Araclar : System.Web.UI.Page
    {
        database bgl = new database();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("select * from aracTablo where durum='False'", bgl.dbBaglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            }

            string islem = "";
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["arabaID"];
                islem = Request.QueryString["islem"];
            }
            if (islem == "kirala")
            {
                SqlCommand komut2 = new SqlCommand("update aracTablo set sahibi=@m1,durum=@m2 where arabaID=@m3", bgl.dbBaglanti());

                if(Session["adSoyad"] == null) {
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Lütfen Giriş Yapınız');window.location='Araclar.aspx';", true);

                }
                else { 

                komut2.Parameters.AddWithValue("@m1", Session["adSoyad"]);
                komut2.Parameters.AddWithValue("@m2", true);
                komut2.Parameters.AddWithValue("@m3", id);

                komut2.ExecuteReader();
                bgl.dbBaglanti().Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Araç Kiralama Başarılı.');window.location='Araclar.aspx';", true);
                
                }
            }
        }
        protected void btnAracAl_Click(object sender, EventArgs e)
        {

        }


    }
}