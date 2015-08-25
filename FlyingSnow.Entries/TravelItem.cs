using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Entries
{
    public class TravelItem
    {
        [Key]
        public int Id { get; set; }
        public Guid ItemGuid { get; set; }
        public string CustomerName { get; set; }
        public string CustomerPhone1 { get; set; }
        public string CustomerPhone2 { get; set; }
        public DateTime StartDate { get; set; }
        public string StartLine { get; set; }

        public double? AdultPrice { get; set; }
        public int? AdultCount { get; set; }
        public double ChildPrice { get; set; }
        public int? ChildCount { get; set; }
        public double OtherPrice { get; set; }
        public string OtherDescription { get; set; }
        public double TotalPrice { get; set; }
        public double InsteadReceive { get; set; }

        public virtual List<TravelPeoples> Peoples { get; set; }

        public virtual TravelAgency Agency { get; set; }

        public double OnwardTicketPrice { get; set; }
        public double OnwardServicePrice { get; set; }
        public double OnwardTicketPrice2 { get; set; }
        public double OnwardServicePrice2 { get; set; }

        public double BackwardTicketPrice { get; set; }
        public double BackwardServicePrice { get; set; }
        public double BackwardTicketPrice2 { get; set; }
        public double BackwardServicePrice2 { get; set; }

        public double SeeOffFee { get; set; }
        public double InsuranceFee { get; set; }
        public double AtTimeRefund { get; set; }
        public double AtTimeAccept { get; set; }
        public double OtherFee { get; set; }
        public double OtherFeeDescription { get; set; }

        public TravelAgency Operator { get; set; }
        public TravelAgency Operator2 { get; set; }

        public DateTime ArriveDate { get; set; }
        public string ArriveTrain { get; set; }
        public string GroupType { get; set; }//团型
        public string DurationDay { get; set; }
        public string HotelStandard { get; set; }

        public DateTime BackTimePlan { get; set; }
        public bool SeeOff { get; set; }
        public string BackTicket { get; set; }
        public bool Provided { get; set; }
        public double AdultPriceBack { get; set; }
        public double ChildPriceBack { get; set; }



        public DateTime TravelDate { get; set; }
        public DateTime CreateDate { get; set; }
        public string ContactName { get; set; }
        public virtual TravelContact Contact { get; set; }
        public string TicketReturn { get; set; }
        public string Introducer { get; set; }//介绍人
        public string Destination { get; set; }//目的地



        public string Area { get; set; }//
        public double TotalAmount { get; set; }//团款
        public virtual Expenditure Expenditure { get; set; }//支出
        public double GrossProfit { get; set; }//毛利
        public double PercapitaProfit { get; set; }//人均利润
        public double InsteadCollectMoney { get; set; }//代收
    }
}