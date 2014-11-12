using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        String cid = Login1.UserName;
        string cpass = Login1.Password;

        SqlConnection con = new SqlConnection(@"Data Source=rakesh\SQLExpress;Initial Catalog=srslab;Integrated Security=True");
        con.Open();
        SqlCommand com = new SqlCommand("select * from login where username=@cname and password=@cpass", con);
        com.Parameters.AddWithValue("@cname", cid);
        com.Parameters.AddWithValue("@cpass", cpass);

        int count = Convert.ToInt32(com.ExecuteNonQuery());
        if (count > 0)
        {
            e.Authenticated = true;
        }
        else
        {
            e.Authenticated = false;
        }

        Response.Redirect("~/home.aspx");
    }
}
