using FlyingSnow.WebNew.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlyingSnow.WebNew.Logic
{
    public class RoleActions
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
                UserName = "administrator"
            };

            IdUserResult = userMgr.Create(appUser, "1qaz2wsxE");
            var user = userMgr.FindByName("administrator");
            if (!userMgr.IsInRole(user.Id, "administrator"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByName("administrator").Id, "administrator");
            }
        }

        internal List<ApplicationUser> GetAllUsers()
        {
            Models.ApplicationDbContext context = new ApplicationDbContext();
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            return userMgr.Users.ToList();
        }

        internal List<object> GetBindingDate()
        {
            Models.ApplicationDbContext context = new Models.ApplicationDbContext();
            var query = from u in context.Users
                        from ur in u.Roles
                        from r in context.Roles
                        where ur.RoleId == r.Id
                        select new { u.UserName, u.RealUserName, Permission = r.Name };
            return query.ToList<object>();
        }

        internal bool RemoveUser(string username)
        {
            Models.ApplicationDbContext context = new Models.ApplicationDbContext();
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            userMgr.Delete(userMgr.FindByName(username));
            return true;
        }

        internal bool UpdateUser(string username, string realUsername, string permission)
        {
            IdentityResult result = null;
            Models.ApplicationDbContext context = new Models.ApplicationDbContext();
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var user = userMgr.FindByName(username);
            if (!string.IsNullOrEmpty(realUsername))
            {
                user.RealUserName = realUsername;
                result = userMgr.Update(user);
            }
            if (!string.IsNullOrEmpty(permission) && !userMgr.IsInRole(user.Id, permission))
            {
                userMgr.RemoveFromRoles(user.Id, "read", "edit", "administrator");
                switch (permission)
                {
                    case "administrator":
                        result = userMgr.AddToRole(user.Id, "administrator");
                        break;
                    case "edit":
                        result = userMgr.AddToRole(user.Id, "edit");
                        break;
                    default:
                        result = userMgr.AddToRole(user.Id, "read");
                        break;
                }
            }
            if (result == IdentityResult.Success) return true; else return false;
        }
    }
}