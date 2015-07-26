using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Entries
{
    public class Expenditure
    {
        [Key]
        public int Id { get; set; }
        public Guid ExpendGuid { get; set; }
        public string TicketLeave { get; set; }
        public double TicketLeavePrice { get; set; }
        public string TicketReturn { get; set; }
        public double TicketReturnPrice { get; set; }
        public double TicketLose { get; set; }
        public string TicketOthers { get; set; }
        public double Insurance { get; set; }
        public double LocalAgencyPay { get; set; }
        public double Quidco { get; set; }
        public string Others { get; set; }
        public double Refund { get; set; }
        public double PreliminaryResult { get; set; }
        public double Result { get; set; }
    }
}