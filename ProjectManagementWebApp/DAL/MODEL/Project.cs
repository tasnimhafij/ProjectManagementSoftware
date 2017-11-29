using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectManagementWebApp.DAL.MODEL
{
    public class Project
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
        public string Description { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        //public string Duration { get; set; }
        public string Status { get; set; }
    }
}