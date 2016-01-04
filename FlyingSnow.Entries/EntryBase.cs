using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Entries
{
    public class EntryBase
    {
        [Key]
        public int Id { get; set; }
        public Guid ItemGuid { get; set; }
        public string Commnet1 { get; set; }
        public string Commnet2 { get; set; }
        public string Commnet3 { get; set; }
        public string Commnet4 { get; set; }
        public string Commnet5 { get; set; }
        public string CreateBy { get; set; }
        public DateTime CreateTime { get; set; }
        public string LastUpdateBy { get; set; }
        public DateTime LastUpdateTime { get; set; }
    }
}
