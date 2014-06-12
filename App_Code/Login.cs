using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

public class Login
{
    SqlConnection connect;

	public Login()
	{
        //has to match whats in webconfig file so AutomartConnectionString may be named incorrectly
        connect = new SqlConnection(ConfigurationManager.ConnectionStrings["AutomartConnectionString"].ConnectionString);
	}

    public int ValidateLogin(string user, string pass)
    {
        int result = 0;
        PasswordHash ph = new PasswordHash();
        string sql = "Select PersonKey, CustomerPassCode, CustomerHashedPAssword " + "From Customer.RegisteredCustomer Where Email = @User";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.Add("@User", user);

        SqlDataReader reader;
        int passCode = 0;
        Byte[] originalPassword = null;
        int personKey = 0;

        connect.Open();
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            passCode = (int)reader["CustomerPassCode"];
            originalPassword = (Byte[])reader["CustomerHashedPassword"];
            personKey = (int)reader["PersonKey"];
        }
        byte[] newhash = ph.HashIt(pass, passCode.ToString());

        if(newhash.SequenceEqual(originalPassword))
        {
            result = personKey;
        }
        else
        {
            result = 0;
        }
        return result;
    }

}