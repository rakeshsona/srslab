using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class patientportal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlConnection con = new SqlConnection(@"Data Source=rakesh\SQLExpress;Initial Catalog=srslab;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select * from patient", con);
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                string str = dr.GetInt32(0).ToString();
                DropDownList1.Items.Add(str);
            }
            con.Close();




        }
        if (!IsPostBack)
        {

            SqlConnection con = new SqlConnection(@"Data Source=rakesh\SQLExpress;Initial Catalog=srslab;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select * from doctorname", con);
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                string str = dr.GetString(1).ToString();
                DropDownList2.Items.Add(str);
            }
            con.Close();




        }

        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=rakesh\SQLExpress;Initial Catalog=srslab;Integrated Security=True");
        con.Open();
        string ooid = DropDownList1.SelectedItem.ToString();
        SqlCommand com2 = new SqlCommand("select * from patient where pid=@ppid", con);
        com2.Parameters.AddWithValue("@ppid",ooid);
        SqlDataReader dr = com2.ExecuteReader();
        dr.Read();




       
        Label1.Text =dr.GetString(1).ToString();
        Label2.Text = dr.GetString(2).ToString();
        Label3.Text = dr.GetInt32(3).ToString();
        Label4.Text = dr.GetString(4).ToString();
        Label5.Text = dr.GetString(5).ToString();
        Label6.Text = dr.GetString(6).ToString();
        Label7.Text = dr.GetString(7).ToString();
        Label8.Text = dr.GetString(8).ToString();
        Label9.Text = dr.GetString(9).ToString();
        Label10.Text = dr.GetString(10).ToString();
        Label11.Text = dr.GetString(11).ToString();
        Label12.Text = dr.GetString(12).ToString();
        Label13.Text = dr.GetInt32(13).ToString();
        Label14.Text = dr.GetString(14).ToString();
        dr.Close();

        dr.Close();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=rakesh\SQLExpress;Initial Catalog=srslab;Integrated Security=True");
        con.Open();
        string ooid = DropDownList1.SelectedItem.ToString();
        string ooid1 = DropDownList1.SelectedItem.ToString();
        SqlCommand com2 = new SqlCommand("select * from patient where pselectdoc=@dname", con);
        com2.Parameters.AddWithValue("@dname", ooid);
        //com2.Parameters.AddWithValue("@ppid", ooid1);
        SqlDataReader dr = com2.ExecuteReader();
        dr.Read();
       
        Label1.Text =dr.GetString(1).ToString();
        Label2.Text = dr.GetString(2).ToString();
        Label3.Text = dr.GetInt32(3).ToString();
        Label4.Text = dr.GetString(4).ToString();
        Label5.Text = dr.GetString(5).ToString();
        Label6.Text = dr.GetString(6).ToString();
        Label7.Text = dr.GetString(7).ToString();
        Label8.Text = dr.GetString(8).ToString();
        Label9.Text = dr.GetString(9).ToString();
        Label10.Text = dr.GetString(10).ToString();
        Label11.Text = dr.GetString(11).ToString();
        Label12.Text = dr.GetString(12).ToString();
        Label13.Text = dr.GetInt32(13).ToString();
        Label14.Text = dr.GetString(14).ToString();
        dr.Close();

        dr.Close();
    }
}
    
