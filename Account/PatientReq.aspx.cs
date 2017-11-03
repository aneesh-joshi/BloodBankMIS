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

        string query = "INSERT INTO PatientReq (PatientName, PatientAge, BloodGroup, PatientGender, HospitalName, HospitalAddress, ROR, RequiredBefore, DoctorName, ContactMobileNo, City, State)" +
            " VALUES (@PatientName, @PatientAge, @BloodGroup, @PatientGender, @HospitalName, @HospitalAddress, @ROR, @RequiredBefore, @DoctorName, @ContactMobileNo, @City, @State)";

        SqlCommand command = new SqlCommand(query, conn);

        command.Parameters.AddWithValue("@PatientName", Name.Text);
        command.Parameters.AddWithValue("@PatientAge", Int32.Parse(txtPatientAge.Text));
        command.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.SelectedValue + ddlRhesus.SelectedValue);
        command.Parameters.AddWithValue("@PatientGender", Gender.SelectedIndex);
        command.Parameters.AddWithValue("@HospitalName", txtHospitalName.Text);
        command.Parameters.AddWithValue("@HospitalAddress", txtHospitalAddress.Text);
        command.Parameters.AddWithValue("@ROR", txtROR.Text);
        command.Parameters.AddWithValue("@RequiredBefore", Calendar2.SelectedDate);
        command.Parameters.AddWithValue("@DoctorName", txtDoctorName.Text);
        command.Parameters.AddWithValue("@ContactMobileNo", Int32.Parse(txtContactMobileNumber.Text));
        command.Parameters.AddWithValue("@City", txtCity.Text);
        command.Parameters.AddWithValue("@State", txtState.Text);

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
