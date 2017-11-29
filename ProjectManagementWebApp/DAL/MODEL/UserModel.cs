using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectManagementWebApp.DAL.MODEL
{
    public class UserModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Status { get; set; }
        public int DesignationId { get; set; }

    }
}