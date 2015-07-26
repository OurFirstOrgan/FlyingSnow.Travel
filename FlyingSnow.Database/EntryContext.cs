using FlyingSnow.Entries;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Database
{
    public class EntryContext : DbContext
    {
        public EntryContext() :
            base("SQLConnection")
        {
        }
        public DbSet<Expenditure> Expenditures { get; set; }
        public DbSet<TravelAgency> TravelAgencies { get; set; }
        public DbSet<TravelContact> TravelContacts { get; set; }
        public DbSet<TravelItem> TravelItems { get; set; }
        public DbSet<TravelPeoples> TravelPeoples { get; set; }
    }
}
