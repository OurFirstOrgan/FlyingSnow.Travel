using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Entries
{
    public class TravelContact : EntryBase
    {
        public string Name { get; set; }
        public string Phone { get; set; }
        public string QQ { get; set; }
        public string IDCardNo { get; set; }
    }
}
