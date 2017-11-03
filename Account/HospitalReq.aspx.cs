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

        string query = "INSERT INTO HospitalReq (Name, BloodGroup, HospitalName, HospitalAddress, DoctorName, ContactName, ContactMobileNo, ContactEmailId, ContactAddress, City, State, DOR)" +
            " VALUES (@Name, @BloodGroup, @HospitalName, @HospitalAddress, @DoctorName, @ContactName, @ContactMobileNo, @ContactEmailId, @ContactAddress, @City, @State, @DOR)";

        SqlCommand command = new SqlCommand(query, conn);

        command.Parameters.AddWithValue("@Name", Name.Text);
        command.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.SelectedValue + ddlRhesus.SelectedValue);
        command.Parameters.AddWithValue("@HospitalName", txtHospitalName.Text);
        command.Parameters.AddWithValue("@DoctorName", txtDoctorName.Text);
        command.Parameters.AddWithValue("@ContactName", txtContactName.Text);
        command.Parameters.AddWithValue("@ContactMobileNo", Int32.Parse(txtContactMobileNumber.Text));
        command.Parameters.AddWithValue("@ContactEmailId", txtContactEmailID.Text);
        command.Parameters.AddWithValue("@HospitalAddress", txtHospitalAddress.Text);
        command.Parameters.AddWithValue("@ContactAddress", txtContactAddress.Text);
        command.Parameters.AddWithValue("@City", txtPatientCity.Text);
        command.Parameters.AddWithValue("@State", txtPatientState.Text);
        command.Parameters.AddWithValue("@DOR", DOR.SelectedDate);

        int result = 56;

        try
        {
            conn.Open();

            result = command.ExecuteNonQuery();


        }
        catch (Exception exp)
        {
            Debuf.Text += exp.ToString();
        }
        finally
        {
            Debuf.Text += result.ToString();
            conn.Close();
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
}
