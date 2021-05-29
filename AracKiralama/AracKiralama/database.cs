using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace AracKiralama
{
    public class database
    {
        public SqlConnection dbBaglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-BUKNNMP\SQLEXPRESS;Initial Catalog=arackiralamaDB;Integrated Security=True");
            baglan.Open();
            return baglan;
        }


    }
}