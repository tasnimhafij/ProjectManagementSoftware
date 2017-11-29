using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectManagementWebApp.DAL.MODEL;

namespace ProjectManagementWebApp.DAL.Gateway
{
    public class ProjectGateWay: Gateway
    {
        public int Save(Project aProject)
        {

            Query = "INSERT INTO Project (Name, CodeName, Description, StartDate, EndDate, Status) VALUES('" + aProject.Name + "', '" + aProject.Code + "', '" + aProject.Description + "', '" + aProject.StartDate + "', '" + aProject.EndDate + "','" + aProject.Status + "')";

            Command = new SqlCommand(Query, Connection);
            //command.CommandText = query;
            //command.Connection = connection;

            Connection.Open();
            int rowAffected = Command.ExecuteNonQuery();
            Connection.Close();

            return rowAffected;
        }
        public List<Project> GetAllProjects()
        {
            //SqlConnection connection = new SqlConnection(connectionString);

            Query = "SELECT * FROM Project";

            Command = new SqlCommand(Query, Connection);

            Connection.Open();

            Reader = Command.ExecuteReader();

            List<Project> projects = new List<Project>();

            while (Reader.Read())
            {
                Project project = new Project();

                project.Id = Convert.ToInt32(Reader["Id"]);
                project.Name = Reader["Name"].ToString();
                project.Code = Reader["CodeName"].ToString();
                project.Description = Reader["Description"].ToString();
                project.StartDate = (Reader["StartDate"].ToString());
                project.EndDate = (Reader["EndDate"].ToString());
                project.Status = Reader["Status"].ToString();

                projects.Add(project);
            }

            Reader.Close();
            Connection.Close();

            return projects;
        }
    }
}