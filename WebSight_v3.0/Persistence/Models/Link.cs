using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;

namespace WebSight_v3.Persistence.Models
{
    [Table("dbo.Link")]
    public class Link
    {
        [Key]
        public int Id { get; set; }
        public string URL { get; set; }
        public string Nickname { get; set; }
        public string Hash { get; set; }
        public DateTime LastModified { get; set; }
    }
}