using System;
using System.Collections.Generic;
using System.Web.UI;
using ProjectManagementWebApp.BLL;
using ProjectManagementWebApp.DAL.MODEL;
using ProjectManagementWebApp.DAL.ViewModel;

namespace ProjectManagementWebApp.UI
{
    public partial class AddUser : Page
    {
        UserManager aUserManager=new UserManager();
        DesignationManager aDesignationManager=new DesignationManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateStudentsGridView();

            if (!IsPostBack)
            {
                List<Designation> designation= aDesignationManager.GetAllDesignation();

                designationDropDownList.DataSource = designation;
                designationDropDownList.DataTextField = "Name";
                designationDropDownList.DataValueField = "Id";
                designationDropDownList.DataBind();
            }

           
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {

            UserModel aUserModel=new UserModel();
            
            aUserModel.Name = nameTextBox.Text;
            aUserModel.Email = emailTextBox.Text;
            aUserModel.Password = defaultPasswordTextBox.Text;

            if (RadioButton1.Checked == true)
            {
                aUserModel.Status = "Active";
            }
            else
            {
                aUserModel.Status = "InActive";
            }
            
            
            //aUserModel.Designation = designationDropDownList.Text;
            aUserModel.DesignationId = Convert.ToInt32(designationDropDownList.SelectedValue);
            messageLabel.Text = aUserManager.Save(aUserModel);
            nameTextBox.Text = String.Empty;
            emailTextBox.Text = String.Empty;
            defaultPasswordTextBox.Text = String.Empty;
            PopulateStudentsGridView();
        }

        private void PopulateStudentsGridView()
        {
            List<UserViewModel> users = aUserManager.GetAllUsers();

            usersGridView.DataSource = users;
            usersGridView.DataBind();
        }

        protected void usersGridView_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            usersGridView.PageIndex = e.NewPageIndex;
            usersGridView.DataBind();
        }
    }
}