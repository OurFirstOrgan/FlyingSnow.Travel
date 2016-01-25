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

        public TravelContact() { }

        public TravelContact(string name, string qq, string phone = null)
        {
            this.ItemGuid = Guid.NewGuid();
            this.Name = name;
            this.QQ = qq;
            this.Phone = phone;
            this.LastUpdateTime = this.CreateTime = DateTime.Now;
        }

        public TravelContact(Guid guid, string name, string qq, string phone = null)
        {
            this.ItemGuid = guid;
            this.Name = name;
            this.QQ = qq;
            this.Phone = phone;
            this.LastUpdateTime = DateTime.Now;
        }
    }
}
