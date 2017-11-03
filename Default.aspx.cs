using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    /// <summary>
    /// Redirects to the page for registering a blood donor
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnRegister(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/Register");
    }

    protected void btnPostHReq(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/HospitalReq");
    }

    protected void btnPostPReq(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/PatientReq");
    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True attachdbfilename=|DataDirectory|\BloodBankDB.mdf";

        string query = "";

        if(txtSBCity.Text.Equals(""))
            query = "SELECT * INTO temp FROM Donor WHERE BloodGroup='" + ddlBloodGroup.SelectedValue + ddlRhesus.SelectedValue + "';" +
                "ALTER TABLE temp DROP COLUMN Password; SELECT * FROM temp; DROP TABLE temp;";
        else
            query = "SELECT * INTO temp FROM Donor WHERE BloodGroup='" + ddlBloodGroup.SelectedValue + ddlRhesus.SelectedValue + "' AND City='"+txtSBCity.Text+"';" +
                "ALTER TABLE temp DROP COLUMN Password; SELECT * FROM temp; DROP TABLE temp;";



        SqlCommand cmd = new SqlCommand(query, conn);

        DataSet ds = new DataSet();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        try
        {
            adapter.Fill(ds, "Donor");
            ResultsGridView.DataSource = ds;
            ResultsGridView.DataBind();
        }
        catch(Exception exp)
        {
            Console.WriteLine(exp.ToString()); 
        }
    }
}