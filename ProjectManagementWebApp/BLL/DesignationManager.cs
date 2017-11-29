using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using ProjectManagementWebApp.DAL.Gateway;
using ProjectManagementWebApp.DAL.MODEL;

namespace ProjectManagementWebApp.BLL
{
    public class DesignationManager
    {
       
        DesignationGateway aDesignationGateway=new DesignationGateway();
        public List<Designation> GetAllDesignation()
        {
            return aDesignationGateway.GetAllDesignation();
        }
        }
 }
