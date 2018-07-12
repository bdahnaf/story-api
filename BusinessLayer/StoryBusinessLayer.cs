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
    }
}
