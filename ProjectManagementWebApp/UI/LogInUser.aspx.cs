using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectManagementWebApp.BLL;
using ProjectManagementWebApp.DAL.MODEL;

namespace ProjectManagementWebApp.UI
{
    public partial class LogInUser : System.Web.UI.Page
    {
        UserManager aUserManager=new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logInButton1_Click(object sender, EventArgs e)
        {
            string email = emailTextBox.Text;

            string password = passwordTextBox.Text;

            UserModel aUserModel = aUserManager.Login(email);

            if (aUserModel == null)
            {
                messageLabel.Text = "No User Found";
            }
            else
            {
                if (aUserModel.DesignationId == 6)
                {
                    Response.Redirect("AdminUI.aspx?");
                }
                else if (aUserModel.DesignationId == 2)
                {
                    Response.Redirect("ProjectManagerUI.aspx?");
                }
            }

        }
    }
}