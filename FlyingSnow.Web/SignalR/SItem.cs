using FlyingSnow.Controls;
using FlyingSnow.Entries;
using FlyingSnow.Log;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlyingSnow.Web.SignalR
{
    [HubName("TravelItemHub")]
    public class SItem : Hub
    {
        TravelControl a_travelItemControl = null;
        AgencyControl a_agencyControl = null;

        public void CreateTravelItem(string context)
        {
            bool success = true;
            try
            {
                Logs.Debug("Begin Create Agency!" + context);
                GetTravelItemControl();
                var item = JsonConvert.DeserializeObject<TravelItem>(context);
                CompleteTravelItem(ref item);
                success = a_travelItemControl.CreateTravelItem(item);
                if (success)
                {
                    Clients.Caller.CreateAgencyCallBack(success, true, JsonConvert.SerializeObject(item));
                }
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("SignleR CreateTravelItem Exception:" + ex.ToString());
                Clients.Caller.CreateTravelItemCallBack(success, true, ex.ToString());
            }
        }

        public void SearchAgency(string param, string type)
        {
            bool success = true;
            try
            {
                GetAgencyControl();
                List<TravelAgency> results = a_agencyControl.GetAgenciesByFilter(type, param);
                Clients.Caller.SearchAgencyCallBack(success, true, JsonConvert.SerializeObject(results));
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("SignleR SearchAgency Exception:" + ex.ToString());
                Clients.Caller.SearchAgencyCallBack(success, true, ex.ToString());
            }
        }

        public void SearchOperator(string param, string type)
        {
            bool success = true;
            try
            {
                GetAgencyControl();
                List<TravelAgency> results = a_agencyControl.GetAgenciesByFilter(type, param);
                Clients.Caller.SearchOperatorCallBack(success, true, JsonConvert.SerializeObject(results));
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("SignleR SearchOperator Exception:" + ex.ToString());
                Clients.Caller.SearchOperatorCallBack(success, true, ex.ToString());
            }
        }

        private void GetTravelItemControl()
        {
            if (a_travelItemControl == null)
            {
                a_travelItemControl = new TravelControl();
            }
        }
        private void GetAgencyControl()
        {
            if (a_agencyControl == null)
            {
                a_agencyControl = new AgencyControl();
            }
        }

        private void CompleteTravelItem(ref TravelItem item)
        {
            if (item.ItemGuid == new Guid())
            {
                item.ItemGuid = Guid.NewGuid();
                item.CreateTime = DateTime.Now;
            }
            item.LastUpdateTime = DateTime.Now;

            item.CreateDate = DateTime.Now;
            item.TravelDate = DateTime.Now;
            //foreach (var con in item.Peoples)
            //{
            //    con.ItemGuid = Guid.NewGuid();
            //    con.CreateTime = con.LastUpdateTime = DateTime.Now;
            //}
        }
        #region SingalR Group
        public System.Threading.Tasks.Task JoinGroup(string groupName)
        {
            return Groups.Add(Context.ConnectionId, groupName);
        }
        public System.Threading.Tasks.Task LeaveGroup(string groupName)
        {
            return Groups.Remove(Context.ConnectionId, groupName);
        }
        #endregion
    }
}