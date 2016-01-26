using FlyingSnow.Controls;
using FlyingSnow.Entries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web.Pages.Forms
{
    public partial class TravelItemForm : System.Web.UI.Page
    {
        TravelControl a_travelItemControl = null;
        //AgencyControl a_agencyControl = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ui_itemButton_Click(object sender, EventArgs e)
        {
            TravelItem item = null;
            try
            {
                GetTravelItemControl();
                item = new TravelItem();
                item.ItemGuid = Guid.NewGuid();
                item.LastUpdateTime = item.CreateTime = DateTime.Now;

                item.CustomerName = this.ui_customerName.Text;
                item.CustomerPhone1 = this.ui_customerPhone1.Text;
                item.CustomerPhone2 = this.ui_customerPhone2.Text;
                //update
                item.TravelDate = DateTime.Now;//new DateTime(this.ui_travelDate.Text);
                item.StartLine = this.ui_tourRoute.Text;

                item.AdultPrice = Convert.ToDouble(this.ui_adultPrice.Text);
                item.AdultCount = Convert.ToInt32(this.ui_adultCount.Text);
                item.ChildPrice = Convert.ToDouble(this.ui_childPrice.Text);
                item.ChildCount = Convert.ToInt32(this.ui_childCount.Text);
                item.OtherPrice = Convert.ToDouble(this.ui_earnestOther.Text);
                item.OtherDescription = this.ui_earnestOtherDes.Text;
                item.TotalPrice = Convert.ToDouble(this.ui_earnestTotal.Text);
                item.InsteadReceive = Convert.ToDouble(this.ui_insteadReceive.Text);

                //item.Agency

                item.OnwardTicketPrice = Convert.ToDouble(this.ui_onwardTicket1.Text);
                item.OnwardServicePrice = Convert.ToDouble(this.ui_onwardServiceCharge1.Text);
                item.OnwardTicketPrice2 = Convert.ToDouble(this.ui_onwardTicket2.Text);
                item.OnwardServicePrice2 = Convert.ToDouble(this.ui_onwardServiceCharge2.Text);

                item.BackwardTicketPrice = Convert.ToDouble(this.ui_backwardTicket1.Text);
                item.BackwardServicePrice = Convert.ToDouble(this.ui_backwardServiceCharge1.Text);
                item.BackwardTicketPrice2 = Convert.ToDouble(this.ui_backwardTicket2.Text);
                item.BackwardServicePrice2 = Convert.ToDouble(this.ui_backwardServiceCharge2.Text);


            }
            catch (Exception)
            {
            }
        }

        private void GetTravelItemControl()
        {
            if (a_travelItemControl == null)
                a_travelItemControl = new TravelControl();
        }
    }
}