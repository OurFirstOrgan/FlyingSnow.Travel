using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FlyingSnow.Web.Startup))]
namespace FlyingSnow.Web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
