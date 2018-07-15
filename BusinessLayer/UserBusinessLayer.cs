using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class UserBusinessLayer
    {
        public void AddUser(User userssObj)
        {
            string connectionString =
            ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spAddUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramUsername = new SqlParameter();
                paramUsername.ParameterName = "@vUsername";
                paramUsername.Value = userssObj.username;
                cmd.Parameters.Add(paramUsername);

                SqlParameter paramPassword = new SqlParameter();
                paramPassword.ParameterName = "@vPassword";
                paramPassword.Value = userssObj.password;
                cmd.Parameters.Add(paramPassword);

                SqlParameter paramFullName = new SqlParameter();
                paramFullName.ParameterName = "@vFullName";
                paramFullName.Value = userssObj.fullname;
                cmd.Parameters.Add(paramFullName);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
