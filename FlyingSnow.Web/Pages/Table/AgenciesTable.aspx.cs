using FlyingSnow.Controls;
using FlyingSnow.Entries;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web.Pages.Table
{
    public partial class AgenciesTable : System.Web.UI.Page
    {
        AgencyControl a_agencyControl;
        List<TravelAgency> a_agencies;
        public string a_result;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAgencyControl();
            if (!IsPostBack)
            {
                a_agencies = a_agencyControl.GetAllAgencies();
                a_result = JsonConvert.SerializeObject(new { Agencies = a_agencies });
            }
        }

        private void GetAgencyControl()
        {
            if (a_agencyControl == null)
            {
                a_agencyControl = new AgencyControl();
            }
        }
    }
}