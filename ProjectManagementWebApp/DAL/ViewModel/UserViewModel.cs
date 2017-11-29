using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectManagementWebApp.DAL.ViewModel
{
    public class UserViewModel
    {
        public int UserId { get; set; }
        public string Name { get; set; } 
        public string Email { get; set; } 
        public string Designation { get; set; } 
        public string Status { get; set; } 
        public string DefaultPassword { get; set; } 
    }
}