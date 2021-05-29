using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AracKiralama
{
    public partial class AracDuzenle : System.Web.UI.Page
    {
        database bgl = new database();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["arabaID"];

            if(Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("select * from aracTablo where arabaID=@p1", bgl.dbBaglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                txtModel.Text = oku[1].ToString();
                txtAciklama.Text = oku[2].ToString();
                txtUcret.Text = oku[3].ToString();
                txtYili.Text = oku[4].ToString();
            }
            }
        }

        protected void btnAracEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update aracTablo set model=@m1,aciklama=@m2,ucret=@m3,yil=@m4 where arabaID=@m5"
            , bgl.dbBaglanti());
            komut.Parameters.AddWithValue("@m1", txtModel.Text);
            komut.Parameters.AddWithValue("@m2", txtAciklama.Text);
            komut.Parameters.AddWithValue("@m3", txtUcret.Text);
            komut.Parameters.AddWithValue("@m4", txtYili.Text);
            komut.Parameters.AddWithValue("@m5", id);
            komut.ExecuteReader();
            bgl.dbBaglanti().Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Araç Düzenleme Başarılı.');window.location='Yonetici.aspx';", true);
            txtModel.Text = "";
            txtAciklama.Text = "";
            txtUcret.Text = "";
            txtYili.Text = "";
        }
    }
}