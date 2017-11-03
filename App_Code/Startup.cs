using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IT_Proj.Startup))]
namespace IT_Proj
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
