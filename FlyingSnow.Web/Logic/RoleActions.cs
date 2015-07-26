using FlyingSnow.Web.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlyingSnow.Web.Logic
{
    internal class RoleActions
    {
        internal void AddUserAndRole()
        {
            Models.ApplicationDbContext context = new Models.ApplicationDbContext();

            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            var roleStore = new RoleStore<IdentityRole>(context);

            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            if (!roleMgr.RoleExists("administrator"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "administrator" });
            }

            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "administrator",
            };
            IdUserResult = userMgr.Create(appUser, "1qaz2wsxE");

            if (!userMgr.IsInRole(userMgr.FindByName("administrator").Id, "administrator"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByName("administrator").Id, "administrator");
            }
        }
    }
}