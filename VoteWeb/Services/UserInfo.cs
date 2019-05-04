using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VoteWeb.Services
{
    public class UserInfo
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Sex { get; set; }
        public string Class { get; set; }
        public string Type { get; set; }
        public string Password { get; set; }
        public string Image { get; set; }
    }
}