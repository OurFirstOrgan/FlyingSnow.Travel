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
        public DateTime TravelDate { get; set; }
        public DateTime CreateDate { get; set; }
        public string ContactName { get; set; }
        public virtual TravelContact Contact { get; set; }
        public virtual TravelPeoples Peoples { get; set; }
        public virtual TravelAgency Agency { get; set; }
        public string Introducer { get; set; }//介绍人
        public string Destination { get; set; }//目的地
        public string GroupType { get; set; }//团型
        public string Area { get; set; }//
        public double TotalAmount { get; set; }//团款
        public virtual Expenditure Expenditure { get; set; }//支出
        public double GrossProfit { get; set; }//毛利
        public double PercapitaProfit { get; set; }//人均利润
        public double InsteadCollectMoney { get; set; }//代收
        public virtual TravelAgency Agency2 { get; set; }
        public virtual TravelAgency Agency3 { get; set; }
    }
}