using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Entries
{
    public class TravelAgency
    {
        [Key]
        public int Id { get; set; }
        public Guid AgencyGuid { get; set; }
        [Required]
        public string AgencyCode { get; set; }
        public string AgencyName { get; set; }
        public List<string> AgencyPhonesList { get; set; }
        public string AgencyPhones
        {
            get
            {
                return string.Join(";", AgencyPhonesList);
            }
            private set
            {
                AgencyPhonesList = value.Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries).ToList();
            }
        }
        public string AgencyFax { get; set; }
        public string AgencyPrincipal { get; set; }
        public string AgencyPrincipalPhone { get; set; }
        public string AgencyAddress { get; set; }
    }
}
