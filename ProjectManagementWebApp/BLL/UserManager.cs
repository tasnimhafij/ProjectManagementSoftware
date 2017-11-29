using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using ProjectManagementWebApp.DAL.Gateway;
using ProjectManagementWebApp.DAL.MODEL;
using ProjectManagementWebApp.DAL.ViewModel;

namespace ProjectManagementWebApp.BLL
{
    public class UserManager
    {
        UserGateway aUserGateway = new UserGateway();

        public string Save(UserModel aUser)
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(aUser.Email);

            if (match.Success)
            {
                if (aUserGateway.IsEmailExist(aUser.Email) != null)
                {
                    return "Email Address already Exits";
                }
                else
                {
                    if (aUserGateway.Save(aUser) > 0)
                    {
                        return "Saved successfully";
                    }
                    else
                    {
                        return "Save failed";
                    }
                }
            }
            else
                {
                    return "Invalid Email Address";
                }
            
           
        }
        public List<UserViewModel> GetAllUsers()
        {
            return aUserGateway.GetAllUsers();
        }

        //public Student SearchStudent(string regNo)
        //{
        //    return aStudentGateway.IsRegNoExist(regNo);
        //}


        public UserModel Login(string email)
        {
            return aUserGateway.IsEmailExist(email);
        }
    }
}