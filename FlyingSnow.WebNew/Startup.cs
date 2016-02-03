using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FlyingSnow.WebNew.Startup))]
namespace FlyingSnow.WebNew
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            app.MapSignalR();
        }
    }
}
