using WebSight_v3.Persistence.Models;
using System.Data.Entity;

namespace WebSight_v3.Persistence
{
    public class WS_Context : DbContext
    {
        public WS_Context() : base("Server= (localdb)\\ProjectsV13;Database=WebSight_DB;Integrated Security=True;")
        {
            Configuration.ProxyCreationEnabled = false;
        }

        public virtual DbSet<Link> Links { get; set; }

    }
}