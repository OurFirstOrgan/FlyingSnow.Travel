using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Entries
{
    public class TravelPeoples
    {
        [Key]
        public int Id { get; set; }
        public Guid PeopleGuid { get; set; }
        public int Adult { get; set; }
        public int Child { get; set; }
        public int Escort { get; set; }
        public int Total
        {
            get
            {
                return Adult + Child + Escort;
            }
            private set
            {
                value = Adult + Child + Escort;
            }
        }
    }
}
