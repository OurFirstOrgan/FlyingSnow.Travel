using FlyingSnow.WebNew.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace FlyingSnow.WebNew
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            System.Data.Entity.Database.SetInitializer(new FlyingSnow.Database.DatabaseInitializer());

            RoleActions roleAction = new RoleActions();
            roleAction.AddUserAndRole();
        }

        void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();

            if (ex is HttpUnhandledException)
            {
                if (ex.InnerException != null)
                {
                    ex = new Exception(ex.InnerException.Message);
                    Server.Transfer("~/Pages/ErrorPage.aspx?handler=Application_Error%20-%20Global.asax", true);
                }
            }
        }
    }
}