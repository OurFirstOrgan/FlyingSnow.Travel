using FlyingSnow.Controls;
using FlyingSnow.Entries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web.Pages
{
    public partial class TravelItemPage : System.Web.UI.Page
    {
        TravelControl a_control;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TypeIn_Click(object sender, EventArgs e)
        {
            GetControl();
            TravelItem item = new TravelItem();
            item.ItemGuid = Guid.NewGuid();
            item.TravelDate = this.TravelDate.SelectedDate;
            item.CreateDate = DateTime.Now;
            item.ContactName = this.ContactName.Text;
            item.Peoples = new TravelPeoples();
            item.Peoples.Adult = Convert.ToInt32(this.AdultCount.Text);
            item.Peoples.Child = Convert.ToInt32(this.ChildCount.Text);
            item.Peoples.Escort = Convert.ToInt32(this.EscortCount.Text);
            item.Introducer = this.Introducer.Text;
            item.Destination = this.Destination.Text;
            item.GroupType = this.GroupType.Text;
            item.Expenditure = new Expenditure();
            item.Expenditure.TicketLeave = this.TicketLeave.Text;
            item.Expenditure.TicketLeavePrice = Convert.ToDouble(this.TicketLeavePrice.Text);
            item.Expenditure.TicketReturn = this.TicketReturn.Text;
            item.Expenditure.TicketReturnPrice = Convert.ToDouble(this.TicketReturnPrice.Text);
            if (a_control.CreateTravelItem(item))
            {

            }
        }
        protected void Edit_Click(object sender, EventArgs e)
        {

        }
        protected void Update_Click(object sender, EventArgs e)
        {

        }

        private void GetControl()
        {
            if (a_control == null)
            {
                a_control = new TravelControl();
            }
        }
    }
}