using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectManagementWebApp.BLL;
using ProjectManagementWebApp.DAL.MODEL;
using ProjectManagementWebApp.DAL.ViewModel;

namespace ProjectManagementWebApp.UI
{
    public partial class AssaignResourcePerson : System.Web.UI.Page
    {
        UserManager aUserManager=new UserManager();
        ProjectManager aProjectManager=new ProjectManager();
        ResourcePersonManager aResourcePersonManager=new ResourcePersonManager();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                List<UserViewModel> users = aUserManager.GetAllUsers();

                resourcePersonDropDownList.DataSource = users;
                resourcePersonDropDownList.DataTextField = "Name";
                resourcePersonDropDownList.DataValueField = "UserId";
                resourcePersonDropDownList.DataBind();


                List<Project> projects = aProjectManager.GetAllProjects();

                projectDropDownList.DataSource = projects;
                projectDropDownList.DataTextField = "Name";
                projectDropDownList.DataValueField = "Id";
                projectDropDownList.DataBind();
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            
            AssignResourcePerson assignResourcePerson=new AssignResourcePerson();
             assignResourcePerson.UserId = Convert.ToInt32(resourcePersonDropDownList.SelectedValue);
            assignResourcePerson.ProjectId = Convert.ToInt32(projectDropDownList.SelectedValue);
            messageLabel.Text=aResourcePersonManager.Save(assignResourcePerson);
           
        }
        
    }
}