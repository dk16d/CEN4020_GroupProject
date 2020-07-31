using WebSight_v3.Persistence;
using WebSight_v3.Persistence.DTO;
using WebSight_v3.Persistence.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Data.SqlClient;
using System.Linq;
using System.Management.Instrumentation;
using System.Threading.Tasks;
using System.Data.Entity;
using WebGrease.Css.Extensions;

namespace WebSight_v3.Controllers.Enterprise
{
    public class LinkEC : BaseEC
    {
        public async Task<IEnumerable<LinkDto>> Get()
        {
            var results = new List<LinkDto>();
            using (var db = new WS_Context())
            {
                try
                {
                    results = await db.Links.Select(x => new LinkDto { Id = x.Id, URL = x.URL, Nickname = x.Nickname }).ToListAsync();
                }
                catch (Exception e)
                {

                }
            }

            return results;
        }

        public async Task<LinkDto> GetById(int id)
        {
            using (var db = new WS_Context())
            {
                return await db.Links.Where(x => x.Id == id)?.Take(1).Select(x => new LinkDto { Id = x.Id, URL = x.URL, Nickname = x.Nickname }).FirstOrDefaultAsync();
            }

        }

        public async Task<IEnumerable<LinkDto>> Search(string query)
        {

            using (var db = new WS_Context())
            {
                return await db.Links
                    .Where(x => x.Nickname.ToUpper().Contains(query.ToUpper()))
                    .Select(x => new LinkDto { Id = x.Id, URL = x.URL, Nickname = x.Nickname })
                    .ToListAsync();
            }

        }


        public async Task<LinkDto> AddOrUpdate(LinkDto linkDto)
        {
            var newLink = new Link { Id = linkDto.Id, URL = linkDto.URL, Nickname = linkDto.Nickname, LastModified = DateTime.Now };
            using (var db = new WS_Context())
            {
                try
                {

                    db.Links.AddOrUpdate(newLink);
                    await db.SaveChangesAsync();
                }
                catch (Exception e)
                {

                }
            }


            return new LinkDto { Id = newLink.Id, URL = newLink.URL, Nickname = newLink.Nickname };
        }

        public LinkDto Remove(LinkDto linkDto)
        {
            using (var db = new WS_Context())
            {
                var result = db.Links.Remove(new Link { Id = linkDto.Id, URL = linkDto.URL, Nickname = linkDto.Nickname });
                db.SaveChanges();
                return new LinkDto { Id = result.Id, URL = result.URL, Nickname = result.Nickname };
            }
        }

        public async Task<Link> RemoveById(int id)
        {
            using (var db = new WS_Context())
            {
                var toRemove = db.Links.FirstOrDefault(x => x.Id == id);
                db.Links.Remove(toRemove);
                await db.SaveChangesAsync();
                return toRemove;
            }
        }

    }
}