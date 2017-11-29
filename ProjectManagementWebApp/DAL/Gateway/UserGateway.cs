using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectManagementWebApp.DAL.MODEL;
using ProjectManagementWebApp.DAL.ViewModel;

namespace ProjectManagementWebApp.DAL.Gateway
{
    public class UserGateway:Gateway
    {
       
        public int Save(UserModel aUser)
        {
            //SqlConnection connection = new SqlConnection(connectionString);
            //connection.ConnectionString = connectionString;

            Query = "INSERT INTO UsersTable (Name, Email, Password, Status, DesignationId) VALUES('" + aUser.Name + "', '" + aUser.Email + "', '" + aUser.Password + "', '" + aUser.Status + "', '" + aUser.DesignationId + "')";

            Command = new SqlCommand(Query, Connection);
            //command.CommandText = query;
            //command.Connection = connection;

            Connection.Open();
            int rowAffected = Command.ExecuteNonQuery();
            Connection.Close();

            return rowAffected;
        }

        public UserModel IsEmailExist(string email)
        {
            //SqlConnection connection = new SqlConnection(connectionString);

            Query = "SELECT * FROM UsersTable WHERE Email='" + email + "'";

            Command = new SqlCommand(Query, Connection);

            Connection.Open();

            Reader = Command.ExecuteReader();

            UserModel aUser = null;

            if (Reader.HasRows)
            {
                Reader.Read();
                aUser = new UserModel();
                aUser.Id = Convert.ToInt32(Reader["Id"]);
                aUser.Name = Reader["Name"].ToString();
                aUser.Email = Reader["Email"].ToString();
                aUser.Password = Reader["Password"].ToString();
                aUser.Status = Reader["Status"].ToString();
                aUser.DesignationId = Convert.ToInt32(Reader["DesignationId"]);
            }

            Reader.Close();
            Connection.Close();
            return aUser;
        }

        public List<UserViewModel> GetAllUsers()
        {
            //SqlConnection connection = new SqlConnection(connectionString);

            Query = "SELECT * FROM UserWiseDesignation";

            Command = new SqlCommand(Query, Connection);

            Connection.Open();

            Reader = Command.ExecuteReader();

            List<UserViewModel> users = new List<UserViewModel>();

            while (Reader.Read())
            {
                UserViewModel user = new UserViewModel();

                user.UserId = Convert.ToInt32(Reader["UserId"]);
                user.Name = Reader["Name"].ToString();
                user.Email = Reader["Email"].ToString();
                user.Designation = Reader["Designation"].ToString();
                user.Status = Reader["Status"].ToString();
                user.DefaultPassword = Reader["Password"].ToString();

                users.Add(user);
            }

            Reader.Close();
            Connection.Close();

            return users;
        }

    }
}