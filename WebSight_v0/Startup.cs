using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebSight_v0.Startup))]
namespace WebSight_v0
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
