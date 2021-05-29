using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AracKiralama
{
    public partial class Ana : System.Web.UI.MasterPage
    {
        database bgl = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KulAdi"] == null)
            {
                lblAdsoyad.Text = "Lütfen Giriş Yapınız";
                btnCikis.Visible = false;
                btnGiris.Visible = true;
            }
            else
            {
                lblAdsoyad.Text = "Hoşgeldiniz " + Session["adSoyad"];
                btnCikis.Visible = true;
                btnGiris.Visible = false;
            }

            SqlCommand komut = new SqlCommand("select * from musteriTablo", bgl.dbBaglanti());
            SqlDataReader oku = komut.ExecuteReader();


        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Giris.aspx");
        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            Response.Redirect("Giris.aspx");
        }
    }
}