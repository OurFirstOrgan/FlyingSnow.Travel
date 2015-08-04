using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using FlyingSnow.Log;
using Newtonsoft.Json;
using FlyingSnow.Entries;
using FlyingSnow.Controls;

namespace FlyingSnow.Web.SignalR
{
    [HubName("TravelAgencyHub")]
    public class Agency : Hub
    {
        AgencyControl a_agencyControl = null;
        public void CreateAgency(string context)
        {
            bool success = true;
            try
            {
                Logs.Debug("Begin Create Agency!" + context);
                GetAgencyControl();
                var agency = JsonConvert.DeserializeObject<TravelAgency>(context);
                agency.AgencyGuid = Guid.NewGuid();
                agency.LastUpdateTime = DateTime.Now;
                success = a_agencyControl.CreateAgency(agency);
                if (success)
                {
                    Clients.Caller.CreateAgencyCallBack(success, true, JsonConvert.SerializeObject(agency));
                }
            }
            catch (Exception ex)
            {
                success = false;
                Logs.Error("SignleR CreateAgency Exception:" + ex.ToString());
                Clients.Caller.CreateAgencyCallBack(success, true, ex.ToString());
            }
        }

        private void GetAgencyControl()
        {
            if (a_agencyControl == null)
            {
                a_agencyControl = new AgencyControl();
            }
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