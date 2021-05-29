using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AracKiralama
{
    public partial class Yonetici : System.Web.UI.Page
    {
        database bgl = new database();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["arabaID"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("select * from aracTablo", bgl.dbBaglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
           
            if (islem == "sil")
            {
                SqlCommand komutSil = new SqlCommand("delete from aracTablo where arabaID=@p1", bgl.dbBaglanti());
                komutSil.Parameters.AddWithValue("@p1", id);
                komutSil.ExecuteReader();
                bgl.dbBaglanti().Close();
                Response.Redirect("Yonetici.aspx");

            }


        }

        protected void btnAracEkle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/images/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("insert into aracTablo (model,aciklama,ucret,yil,durum,aracFoto) values (@m1,@m2,@m3,@m4,@m5,@m6)", bgl.dbBaglanti());
            komut.Parameters.AddWithValue("@m1", txtModel.Text);
            komut.Parameters.AddWithValue("@m2", txtAciklama.Text);
            komut.Parameters.AddWithValue("@m3", txtUcret.Text);
            komut.Parameters.AddWithValue("@m4", txtYili.Text);
            komut.Parameters.AddWithValue("@m5", "False");
            komut.Parameters.AddWithValue("@m6", "~/images/" + FileUpload1.FileName);
            komut.ExecuteReader();
            bgl.dbBaglanti().Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Araç Ekleme Başarılı.');window.location='Yonetici.aspx';", true);
            txtModel.Text = "";
            txtAciklama.Text = "";
            txtUcret.Text = "";
            txtYili.Text = "";
        }
    }
}