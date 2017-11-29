using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectManagementWebApp.BLL;
using ProjectManagementWebApp.DAL.MODEL;

namespace ProjectManagementWebApp.UI
{
    public partial class AddProject : System.Web.UI.Page
    {
        
        ProjectManager aProjectManager=new ProjectManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Project aProject = new Project();

            aProject.Name = nameTextBox.Text;
            aProject.Code = codeTextBox.Text;
            aProject.Description = descriptionTextArea.Text;
            //aProject.StartDate = Convert.ToDateTime(startDateTextbox.Text);
            //aProject.EndDate = Convert.ToDateTime(endDateTextbox.Text);
            DateTime dt = Convert.ToDateTime(startDateTextbox.Text);
            DateTime dt2 = Convert.ToDateTime(endDateTextbox.Text);

            TimeSpan tsTimeSpan = (dt2 - dt);

            dt = dt.AddDays(-1).AddYears(1);
            dt2 = dt.AddDays(-1).AddYears(1);
            aProject.StartDate = dt.ToShortDateString();
            aProject.EndDate = dt.ToShortDateString();

            

            durationTextBox.Text = tsTimeSpan.TotalDays.ToString();

            if (notStartedRadioButton.Checked == true)
            {
                aProject.Status = "Not Started";
            }
            else if(startedRadioButton2.Checked==true)
            {
                aProject.Status = "Started";
            }
             else if (completedRadioButton3.Checked == true)
             {
                 aProject.Status = "Completed";
             }
             else
             {
                 aProject.Status = "Cancelled";
             }

            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/File/")+FileUpload1.FileName);
            }


            messagelabel.Text = aProjectManager.Save(aProject);
        }

        }
       
 }
