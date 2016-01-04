using FlyingSnow.Controls;
using FlyingSnow.Entries;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web.Pages.Table
{
    public partial class TravelItemsTable : System.Web.UI.Page
    {
        TravelControl a_travelControl;

        List<TravelItem> a_travelItems;
        public string a_result;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetTravelControl();
            if (!IsPostBack)
            {
                DateTime start = DateTime.Now.AddMonths(-3);
                DateTime end = DateTime.Now;
                a_travelItems = a_travelControl.GetTravelItemsByDate(start, end);
                a_result = JsonConvert.SerializeObject(new { TravelItems = a_travelItems });
            }
        }

        private void GetTravelControl()
        {
            if (a_travelControl == null)
            {
                a_travelControl = new TravelControl();
            }
        }
    }
}