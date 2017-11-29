using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectManagementWebApp.DAL.MODEL;

namespace ProjectManagementWebApp.DAL.Gateway
{
    public class ResourcePersonGateWay:Gateway
    {
        public int Save(AssignResourcePerson assignResourcePerson)
        {
            Query = "INSERT INTO AssignResourcePerson (UserId, ProjectId) VALUES('" + assignResourcePerson.UserId + "', '" + assignResourcePerson.ProjectId + "')";

            Command = new SqlCommand(Query, Connection);
            //command.CommandText = query;
            //command.Connection = connection;

            Connection.Open();
            int rowAffected = Command.ExecuteNonQuery();
            Connection.Close();

            return rowAffected;
        }
    }
}