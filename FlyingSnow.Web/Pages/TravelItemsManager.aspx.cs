using FlyingSnow.Controls;
using FlyingSnow.Entries;
using FlyingSnow.Travel.OfficeHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web.Pages
{
    public partial class TravelItemsManager : System.Web.UI.Page
    {
        TravelControl a_control;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }

        public void BindData()
        {
            GetTravelControl();
            this.TravelItemsDataGrid.DataSource = a_control.GetBindingData();
            this.TravelItemsDataGrid.DataBind();
        }
        private void GetTravelControl()
        {
            if (a_control == null)
            {
                a_control = new TravelControl();
            }
        }

        protected void TravelItemsDataGrid_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            GetTravelControl();
            TravelItem item = a_control.GetTravelItemByItemGuid(new Guid(e.Item.Cells[1].ToString()));
            if (e.CommandName.Equals("Export"))
            {
                ExportWord();
            }
        }

        public void ExportWord()
        {
            //TravelWord travelWord = new TravelWord();
            //TravelWord.ConfrimBase();
        }
    }
}