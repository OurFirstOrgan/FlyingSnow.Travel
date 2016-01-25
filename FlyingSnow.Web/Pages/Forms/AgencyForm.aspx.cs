using FlyingSnow.Controls;
using FlyingSnow.Entries;
using FlyingSnow.Log;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web.Pages.Forms
{
    public partial class AgencyForm : System.Web.UI.Page
    {
        AgencyControl a_agencyControl = null;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ui_agencyButton_Click(object sender, EventArgs e)
        {
            bool success = true;
            try
            {
                Logs.Debug("Begin Create Agency!");
                GetAgencyControl();
                success = a_agencyControl.CreateAgency(AssemblyAgency());
            }
            catch (Exception ex)
            {
                Logs.Error("ui_agencyButton_Click Exception:" + ex.ToString());
            }
            finally
            {
                if (success)
                {
                    Response.Redirect("/Pages/Table/AgenciesTable.aspx", true);
                }
            }
        }

        private void GetAgencyControl()
        {
            if (a_agencyControl == null)
            {
                a_agencyControl = new AgencyControl();
            }
        }

        private TravelAgency AssemblyAgency()
        {
            TravelAgency _agency = null;
            try
            {
                _agency = new TravelAgency();
                _agency.ItemGuid = Guid.NewGuid();
                _agency.AgencyName = this.ui_agencyName.Text;
                _agency.AgencyCode = this.ui_agencyCode.Text;
                _agency.AgencyPrincipal = this.ui_agencyPrincipal.Text;
                _agency.AgencyPrincipalPhone = this.ui_agencyPrincipalPhone.Text;
                _agency.AgencyFinancePhone = this.ui_agencyFinancePhone.Text;
                _agency.AgencyFax = this.ui_agencyFax.Text;
                _agency.AgencyAddress = this.ui_agencyAddress.Text;
                _agency.AgencyContacts = new List<TravelContact>();
                if (!(string.IsNullOrEmpty(this.ui_agencyContactU1.Text) && string.IsNullOrEmpty(this.ui_agencyContactQQ1.Text)))
                {
                    _agency.AgencyContacts.Add(new TravelContact(this.ui_agencyContactU1.Text, this.ui_agencyContactQQ1.Text));
                }
                if (!(string.IsNullOrEmpty(this.ui_agencyContactU2.Text) && string.IsNullOrEmpty(this.ui_agencyContactQQ2.Text)))
                {
                    _agency.AgencyContacts.Add(new TravelContact(this.ui_agencyContactU2.Text, this.ui_agencyContactQQ2.Text));
                }
                if (!(string.IsNullOrEmpty(this.ui_agencyContactU3.Text) && string.IsNullOrEmpty(this.ui_agencyContactQQ3.Text)))
                {
                    _agency.AgencyContacts.Add(new TravelContact(this.ui_agencyContactU3.Text, this.ui_agencyContactQQ3.Text));
                }
                _agency.LastUpdateTime = _agency.CreateTime = DateTime.Now;
            }
            catch (Exception ex)
            {
                Logs.Error("AssemblyAgency Exception:" + ex.ToString());
            }
            return _agency;
        }
    }
}