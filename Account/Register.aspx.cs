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

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True attachdbfilename=|DataDirectory|\BloodBankDB.mdf";

        string query = "INSERT INTO Donor (Name, UserName, Password, DOB, Gender, BloodGroup, Weight, MobileNo, EmailId, Address, City, State, DOLD)" +
            " VALUES (@Name, @UserName, @Password, @DOB, @Gender, @BloodGroup, @Weight, @MobileNo, '@EmailId', @Address, @City, @State, @DOLD)";

        SqlCommand command = new SqlCommand(query, conn);

        command.Parameters.AddWithValue("@Name", Name.Text);
        command.Parameters.AddWithValue("@UserName", UserName.Text);
        command.Parameters.AddWithValue("@Password", Password.Text);
        command.Parameters.AddWithValue("@DOB", DOB.SelectedDate);
        command.Parameters.AddWithValue("@Gender", (int)ddlGender.SelectedIndex);
        command.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.SelectedValue + ddlRhesus.SelectedValue);
        command.Parameters.AddWithValue("@Weight", float.Parse(Weight.Text));
        command.Parameters.AddWithValue("@MobileNo", Int32.Parse(MobileNo.Text));
        command.Parameters.AddWithValue("@EmailId", EmailID.Text);
        command.Parameters.AddWithValue("@Address", Address.Text);
        command.Parameters.AddWithValue("@City", City.Text);
        command.Parameters.AddWithValue("@State", State.Text);
        command.Parameters.AddWithValue("@DOLD", DOLD.SelectedDate);


        int result = 56;

        try
        {
            conn.Open();

            result = command.ExecuteNonQuery();


        }
        catch (Exception exp)
        {
            debug.Text += exp.ToString();
        }
        finally
        {
            debug.Text = result.ToString();
            conn.Close();
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
}

