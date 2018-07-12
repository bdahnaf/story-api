using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BusinessLayer
{
    public class StoryBusinessLayer
    {
        public IEnumerable<Story> Stories
        {
            get
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                List<Story> stories = new List<Story>();

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("spGetAllStories", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while(reader.Read())
                    {
                        Story storyObj = new Story();
                        storyObj.ID = Convert.ToInt32(reader["ID"]);
                        storyObj.Title = reader["Title"].ToString();
                        storyObj.Body = reader["Body"].ToString();
                        storyObj.DatePosted = reader["DatePosted"].ToString();

                        stories.Add(storyObj);
                    }
                }
                return stories;
            }
        }

        public void AddStory(Story storiesObj)
        {
            string connectionString =
            ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spAddStories", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramTitle = new SqlParameter();
                paramTitle.ParameterName = "@vTitle";
                paramTitle.Value = storiesObj.Title;
                cmd.Parameters.Add(paramTitle);

                SqlParameter paramBody = new SqlParameter();
                paramBody.ParameterName = "@vBody";
                paramBody.Value = storiesObj.Body;
                cmd.Parameters.Add(paramBody);

                SqlParameter paramDate = new SqlParameter();
                paramDate.ParameterName = "@vPostedDate";
                paramDate.Value = storiesObj.DatePosted;
                cmd.Parameters.Add(paramDate);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void EditStory(Story storiesObj)
        {
            string connectionString =
            ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spEditStory", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramID = new SqlParameter();
                paramID.ParameterName = "@vID";
                paramID.Value = storiesObj.ID;
                cmd.Parameters.Add(paramID);

                SqlParameter paramTitle = new SqlParameter();
                paramTitle.ParameterName = "@vTitle";
                paramTitle.Value = storiesObj.Title;
                cmd.Parameters.Add(paramTitle);

                SqlParameter paramBody = new SqlParameter();
                paramBody.ParameterName = "@vBody";
                paramBody.Value = storiesObj.Body;
                cmd.Parameters.Add(paramBody);

                SqlParameter paramDate = new SqlParameter();
                paramDate.ParameterName = "@vPostedDate";
                paramDate.Value = storiesObj.DatePosted;
                cmd.Parameters.Add(paramDate);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
