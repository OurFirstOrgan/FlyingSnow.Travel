using FlyingSnow.Controls;
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
            BindData();
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

        protected void TravelItemsDataGrid_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            GetTravelControl();
            if (a_control.DeleteTravelItem(new Guid(e.Item.Cells[0].Text)))
            {
                BindData();
            }
            else
            {
                Response.Write("<script language=javascript>alert('删除失败');</script>");
            }
        }

        protected void TravelItemsDataGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void AgenciesDataGrid_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName.Equals("Export"))
            {
                //导出
            }
        }
    }
}