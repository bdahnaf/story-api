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
        public void AddUser(User usersObj)
        {
            string connectionString =
            ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spAddUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramUsername = new SqlParameter();
                paramUsername.ParameterName = "@vUsername";
                paramUsername.Value = usersObj.username;
                cmd.Parameters.Add(paramUsername);

                SqlParameter paramPassword = new SqlParameter();
                paramPassword.ParameterName = "@vPassword";
                paramPassword.Value = usersObj.password;
                cmd.Parameters.Add(paramPassword);

                SqlParameter paramFullName = new SqlParameter();
                paramFullName.ParameterName = "@vFullName";
                paramFullName.Value = usersObj.fullname;
                cmd.Parameters.Add(paramFullName);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public bool isUser(User usersObj)
        {
            bool isValidUser = false;
            string connectionString =
            ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spCheckUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramUsername = new SqlParameter();
                paramUsername.ParameterName = "@vUsername";
                paramUsername.Value = usersObj.username;
                cmd.Parameters.Add(paramUsername);

                SqlParameter paramPassword = new SqlParameter();
                paramPassword.ParameterName = "@vPassword";
                paramPassword.Value = usersObj.password;
                cmd.Parameters.Add(paramPassword);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    isValidUser = true;
                }
            }
            return isValidUser;
        }
    }
}
