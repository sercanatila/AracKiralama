using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AracKiralama
{
    public partial class KayitOl : System.Web.UI.Page
    {
        database bgl = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from musteriTablo", bgl.dbBaglanti());
            SqlDataReader oku = komut.ExecuteReader();
            
        }

        protected void btnKayitol_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into musteriTablo (musteriKulAdi,musteriSifre,musteriAd,musteriSoyad) values (@m1,@m2,@m3,@m4)", bgl.dbBaglanti());
            komut.Parameters.AddWithValue("@m1", txtKuladi.Text);
            komut.Parameters.AddWithValue("@m2", txtSifre.Text);
            komut.Parameters.AddWithValue("@m3", txtAd.Text);
            komut.Parameters.AddWithValue("@m4", txtSoyad.Text);
            komut.ExecuteReader();
            bgl.dbBaglanti().Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Kaydınız Başarılı.');window.location='KayitOl.aspx';", true);
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtKuladi.Text = "";
            txtSifre.Text = "";
        }
    }
}