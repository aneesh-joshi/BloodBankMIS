using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using IT_Proj;
using System.Data.SqlClient;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        string query = "INSERT INTO Loleshwar(Name, Date, Number) VALUES(@name, @date, @num)";
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True";

        SqlCommand comm = new SqlCommand(query, conn);

        DateTime dt = DOB.SelectedDate;

        comm.Parameters.AddWithValue("@name", Name.Text);
        comm.Parameters.AddWithValue("@num", Int32.Parse(Number.Text));
        comm.Parameters.AddWithValue("@date", dt);

        int result = 69;

        try
        {
            conn.Open();

            result = comm.ExecuteNonQuery();
        }
        catch(Exception exp)
        {
            debug.Text = exp.ToString();
        }
        debug.Text += result.ToString();
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
}







/*
         var manager = new UserManager();
        var user = new ApplicationUser() { UserName = UserName.Text };
        IdentityResult result = manager.Create(user, Password.Text);
        if (result.Succeeded)
        {
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
     
     */
