using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectManagementWebApp.DAL.Gateway;
using ProjectManagementWebApp.DAL.MODEL;

namespace ProjectManagementWebApp.BLL
{
    public class ResourcePersonManager
    {
        ResourcePersonGateWay aResourcePersonGateWay = new ResourcePersonGateWay();

        public string Save(AssignResourcePerson assignResourcePerson)
        {
            if (aResourcePersonGateWay.Save(assignResourcePerson) > 0)
            {
                return "SaveSuccessfully";
            }
            else
            {
                return "useccessfull";
            }
        }
    }
}