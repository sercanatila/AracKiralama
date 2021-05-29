using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AracKiralama
{
    public partial class Anasayfa1 : System.Web.UI.Page
    {
        database bgl = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KulAdi"] == null)
            {
                lblAdsoyad.Text = "";
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


            SqlCommand komut2 = new SqlCommand("select * from aracTablo", bgl.dbBaglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();

            modelDropdown.DataTextField = "model";
            modelDropdown.DataValueField = "arabaID";
            modelDropdown.DataSource = oku2;
            modelDropdown.DataBind();

            SqlCommand komut3 = new SqlCommand("select * from aracTablo where model like '%" + modelDropdown.SelectedItem
            + "%'", bgl.dbBaglanti());
            SqlDataReader oku3 = komut3.ExecuteReader();
            DataList1.DataSource = oku3;
            DataList1.DataBind();
            DataList1.Visible = false;


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

        protected void btnAracAra_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("select * from aracTablo where model like '%" + modelDropdown.SelectedItem
            + "%'", bgl.dbBaglanti());
            SqlDataReader oku3 = komut3.ExecuteReader();
            DataList1.DataSource = oku3;
            DataList1.DataBind();
            DataList1.Visible = true;
        }
        protected void dropdownChanged(object sender, EventArgs e)
        {

                SqlCommand komut3 = new SqlCommand("select * from aracTablo where model like '%" + modelDropdown.SelectedItem
                + "%'", bgl.dbBaglanti());
                SqlDataReader oku3 = komut3.ExecuteReader();
                DataList1.DataSource = oku3;
                DataList1.DataBind();
                DataList1.Visible = true;
            
        }
    }
}