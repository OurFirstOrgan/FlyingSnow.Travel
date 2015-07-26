using FlyingSnow.Database;
using FlyingSnow.Entries;
using FlyingSnow.Log;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Controls
{
    public class TravelControl
    {
        public List<TravelItem> GetTravelItems()
        {
            List<TravelItem> results = null;
            try
            {
                using (var db = new EntryContext())
                {
                    results = db.TravelItems.ToList();
                }
            }
            catch (Exception ex)
            {
                Logs.Error("GetAgencies Exception : " + ex.ToString());
            }
            return results;
        }

        public List<object> GetBindingData()
        {
            List<object> result = null;
            try
            {
                using (var db = new EntryContext())
                {
                    var query = from i in db.TravelItems
                                select new
                                {
                                    Id = i.Id,
                                    ItemGuid = i.ItemGuid,
                                    TravelDate = i.TravelDate,
                                    ContactName = i.ContactName,
                                    PeoplesCount = i.Peoples.Total,
                                    Agency = i.Agency.AgencyName,
                                    Introducer = i.Introducer,
                                    Destination = i.Destination,
                                    GroupType = i.GroupType
                                };
                    result = query.ToList<object>();
                }
            }
            catch (Exception ex)
            {
                Logs.Error("GetBindingData Exception : " + ex.ToString());
            }
            return result;
        }
        public bool CreateTravelItem(Entries.TravelItem item)
        {
            bool success = true;
            try
            {
                using (var db = new EntryContext())
                {
                    db.TravelItems.Add(item);
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("CreateTravelItem Exception : " + ex.ToString());
            }
            return success;
        }


    }
}
