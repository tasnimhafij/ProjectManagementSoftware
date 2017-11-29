using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectManagementWebApp.DAL.Gateway;
using ProjectManagementWebApp.DAL.MODEL;

namespace ProjectManagementWebApp.BLL
{
    
    public class ProjectManager
    {
        ProjectGateWay  aProjectGateWay=new ProjectGateWay();
        public string Save(Project aProject)
        {
            if (aProjectGateWay.Save(aProject) > 0)
            {
                return "Save Successfully";
            }
            else
            {
                return "Save Unsuccessful";
            }
        }
        public List<Project> GetAllProjects()
        {
            return aProjectGateWay.GetAllProjects();
        }
    }
}