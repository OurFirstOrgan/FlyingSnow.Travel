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
    public class AgencyControl
    {

        #region Get
        public List<TravelAgency> GetAgencies()
        {
            List<TravelAgency> results = null;
            try
            {
                using (var db = new EntryContext())
                {
                    results = db.TravelAgencies.ToList();
                }
            }
            catch (Exception ex)
            {
                Logs.Error("GetAgencies Exception : " + ex.ToString());
            }
            return results;
        }

        public List<TravelAgency> GetAgenciesByFilter(string key, object value)
        {
            List<TravelAgency> results = null;
            try
            {
                results = new List<TravelAgency>();
                using (var db = new EntryContext())
                {
                    switch (key)
                    {
                        case "Code":
                        case "code":
                            results.Add(db.TravelAgencies.FirstOrDefault(a => a.AgencyCode.Equals(value.ToString(), StringComparison.CurrentCultureIgnoreCase)));
                            break;
                        default:
                            break;
                    }
                }
            }
            catch (Exception ex)
            {
                Logs.Error("GetAgenciesByFilter Exception : " + ex.ToString());
            }
            return results;
        }
        #endregion

        #region Create
        public bool CreateAgency(TravelAgency agency)
        {
            bool success = true;
            try
            {
                using (var db = new EntryContext())
                {
                    if (db.TravelAgencies.FirstOrDefault(a => a.AgencyCode.Equals(agency.AgencyCode, StringComparison.CurrentCultureIgnoreCase)) != null)
                    {
                        success = false;
                    }
                    else
                    {
                        db.TravelAgencies.Add(agency);
                        db.SaveChanges();
                    }
                }
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("CreateAgency Exception : " + ex.ToString());
            }
            return success;
        }
        #endregion

        #region Update
        public bool UpdateAgency(TravelAgency a_agency)
        {
            bool success = true;
            try
            {
                using (var db = new EntryContext())
                {
                    db.Entry<TravelAgency>(a_agency).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("UpdateAgency Exception : " + ex.ToString());
            }
            return success;
        }

        public bool UpdateAgencyByCode(TravelAgency agency)
        {
            bool success = true;
            try
            {
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("UpdateAgencyByCode Exception : " + ex.ToString());
            }
            return success;
        }
        #endregion

        #region Delete
        public bool DeleteAgencyByGuid(Guid guid)
        {
            bool success = true;
            try
            {
                using (var db = new EntryContext())
                {
                    var item = from a in db.TravelAgencies
                               where a.AgencyGuid == guid
                               select a;
                    db.TravelAgencies.Remove(item.FirstOrDefault());
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("DeleteAgencyByGuid Exception : " + ex.ToString());
            }
            return success;
        }
        #endregion


    }
}
