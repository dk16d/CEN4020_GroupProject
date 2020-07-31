using WebSight_v3.Controllers.Enterprise;
using WebSight_v3.Persistence;
using WebSight_v3.Persistence.DTO;
using WebSight_v3.Persistence.Models;
using System.Threading.Tasks;
using System.Web.Http;

namespace WebSight_v3.Controllers.Api
{
    [RoutePrefix("api/Link")]
    public class LinkController : ApiController
    {
        [HttpGet]
        [Route("Get")]
        public async Task<IHttpActionResult> Get()
        {
            return Ok(await new LinkEC().Get());
        }

        [HttpGet]
        [Route("GetById/{id}")]
        public async Task<IHttpActionResult> GetById(int id)
        {
            return Ok(await new LinkEC().GetById(id));
        }

        [HttpPost]
        [Route("AddOrUpdate")]
        public async Task<IHttpActionResult> AddOrUpdate([FromBody] LinkDto link)
        {
            return Ok(await new LinkEC().AddOrUpdate(link));
        }

        [HttpGet]
        [Route("RemoveById/{id}")]
        public async Task<IHttpActionResult> RemoveById(int id)
        {
            return Ok(await new LinkEC().RemoveById(id));
        }

        [HttpPost]
        [Route("Remove")]
        public async Task<IHttpActionResult> Remove([FromBody] LinkDto linkDto)
        {
            return Ok(new LinkEC().Remove(linkDto));
        }
    }
}