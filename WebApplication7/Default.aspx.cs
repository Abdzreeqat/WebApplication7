using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace WebApplication7
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { LoadRecord(); }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-3KS1EFN;Initial Catalog=programdb;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-3KS1EFN;Initial Catalog=programdb;Integrated Security=True");
            conn.Open();
            SqlCommand comm = new SqlCommand("Insert into StudentInfo_Tabl values('" + int.Parse(TextBox2.Text)+"', '"+TextBox1.Text+"', '"+DropDownList1.SelectedValue+"', '"+double.Parse(TextBox3.Text)+"', '"+TextBox4.Text+"')", conn);

            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);

            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from StudentInfo_Tabl",conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand(" Update StudentInfo_Tabl set StudentName ='" + TextBox1.Text + "', Adress ='" + DropDownList1.SelectedValue + "', Age='" + double.Parse(TextBox3.Text) + "', Contact = '" + TextBox4.Text + "'Where StudentID ='" + int.Parse(TextBox2.Text)+"'" , conn);
             comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Update');", true);

            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand(" Delete StudentInfo_Tabl Where StudentID ='" + int.Parse(TextBox2.Text)+"'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);

            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        { 
            SqlCommand comm = new SqlCommand("select * from StudentInfo_Tabl Where StudentID = ' " + int.Parse(TextBox2.Text) + "'", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            conn.Open();
            SqlCommand comm = new SqlCommand("select * from StudentInfo_Tabl where StudentID= '" + int.Parse(TextBox2.Text) + "'", conn);
            SqlDataReader srd = comm.ExecuteReader();
            while (srd.Read())
            {
                TextBox1.Text = srd.GetValue(1).ToString();
                DropDownList1.SelectedValue = srd.GetValue(2).ToString();
                TextBox3.Text = srd.GetValue(3).ToString();
                TextBox4.Text = srd.GetValue(4).ToString();
                RadioButtonList1.SelectedValue = srd.GetValue(5).ToString();
            }
            conn.Close();

        }
        }
    
}