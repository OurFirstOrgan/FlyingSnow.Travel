﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Entries
{
    public class TravelContact
    {
        [Key]
        public int ContactId { get; set; }
        public Guid ContactGuid { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string QQ { get; set; }
        public string IDCardNo { get; set; }
    }
}
