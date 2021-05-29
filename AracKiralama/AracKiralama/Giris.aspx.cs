using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AracKiralama
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        database bgl = new database();
        protected void Page_Load(object sender, EventArgs e)
        {

                
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("KayitOl.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand komut = new SqlCommand("select * from musteriTablo where musteriKulAdi=@m1 and musteriSifre=@m2", bgl.dbBaglanti());
            komut.Parameters.AddWithValue("@m1", txtKulAdi.Text);
            komut.Parameters.AddWithValue("@m2", txtSifre.Text);
            
            SqlDataReader oku = komut.ExecuteReader();

            if(txtKulAdi.Text == "yonetici" && txtSifre.Text == "123")
            {
                Response.Redirect("Yonetici.aspx");
            }
            else
            {
                lblHata.Visible = true;
            }

            if (oku.HasRows)
            {
                while (oku.Read())
                {
                    Session["KulAdi"] = oku["musteriKulAdi"].ToString();
                    Session["adSoyad"] = oku["musteriAd"].ToString() + " " + oku["musteriSoyad"].ToString();
                    Response.Redirect("Anasayfa.aspx");
                }

            }
            else
            {
                lblHata.Visible = true;
            }

        }
    }
}