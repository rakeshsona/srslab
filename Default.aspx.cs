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
        if (!IsPostBack)
        {

            SqlConnection con = new SqlConnection(@"Data Source=rakesh\SQLExpress;Initial Catalog=srslab;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select * from doctorname", con);
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                string str = dr.GetString(1).ToString();
                DropDownList1.Items.Add(str);
            }
            con.Close();




        }
        if (!IsPostBack)
        {

            SqlConnection con = new SqlConnection(@"Data Source=rakesh\SQLExpress;Initial Catalog=srslab;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select * from bed", con);
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                string str = dr.GetString(0).ToString();
                string str2 = dr.GetString(1).ToString();
                DropDownList2.Items.Add(str);
                DropDownList3.Items.Add(str2);
            }
            con.Close();





        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=rakesh\SQLExpress;Initial Catalog=srslab;Integrated Security=True");
        con.Open();

        SqlCommand com = new SqlCommand("insert into patient values(@pid,@pname,@cpaddress,@cpage,@cpsex,@cpmobile,@cpemail,@cpdor,@cptype,@cpdisease,@cpselectdoc,@cptreatment,@cpbedtype,@cprateperday,@cpdod)", con);
        com.Parameters.AddWithValue("@pid", TextBox1.Text);
        com.Parameters.AddWithValue("@pname", TextBox2.Text);
        com.Parameters.AddWithValue("@cpaddress", TextBox3.Text);
        com.Parameters.AddWithValue("@cpage", TextBox4.Text);
        com.Parameters.AddWithValue("@cpsex", rb2.SelectedValue);
        com.Parameters.AddWithValue("@cpmobile", TextBox5.Text);
        com.Parameters.AddWithValue("@cpemail", TextBox6.Text);
        com.Parameters.AddWithValue("@cpdor", TextBox11.Text);
        com.Parameters.AddWithValue("@cptype", rb3.SelectedValue);
        com.Parameters.AddWithValue("@cpdisease", TextBox8.Text);
        com.Parameters.AddWithValue("@cpselectdoc", DropDownList1.SelectedValue);
        com.Parameters.AddWithValue("@cptreatment", TextBox9.Text);
        com.Parameters.AddWithValue("@cpbedtype", DropDownList2.SelectedValue);
        com.Parameters.AddWithValue("@cprateperday", DropDownList3.SelectedValue);
        com.Parameters.AddWithValue("@cpdod", TextBox10.Text);
        com.ExecuteNonQuery();
        Label1.Text = " Patient Registerd Successfully";

        con.Close();

    }
}