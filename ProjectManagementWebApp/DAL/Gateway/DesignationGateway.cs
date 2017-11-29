using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectManagementWebApp.DAL.MODEL;

namespace ProjectManagementWebApp.DAL.Gateway
{
    public class DesignationGateway:Gateway
    {
        public List<Designation> GetAllDesignation()
        {
            Query = "SELECT * FROM Designation";

            Command = new SqlCommand(Query, Connection);

            Connection.Open();

            Reader = Command.ExecuteReader();

            List<Designation> designations = new List<Designation>();

            while (Reader.Read())
            {
                Designation designation = new Designation();

                designation.Id = Convert.ToInt32(Reader["Id"]);
                designation.Code = Reader["Code"].ToString();
                designation.Name = Reader["Name"].ToString();

                designations.Add(designation);
            }

            Reader.Close();
            Connection.Close();

            return designations;
        }
        }
    }
