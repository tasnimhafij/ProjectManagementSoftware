using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectManagementWebApp.DAL.MODEL
{
    public class AssignResourcePerson
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int ProjectId { get; set; }
    }
}