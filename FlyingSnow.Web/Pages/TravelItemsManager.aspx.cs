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

        protected void TravelItemsDataGrid_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            GetTravelControl();
            TravelItem item = a_control.GetTravelItemByItemGuid(new Guid(e.Item.Cells[0].Text.ToString()));
            if (e.CommandName.Equals("Export"))
            {
                ExportWord(item);
            }
            else if (e.CommandName.Equals("Select"))
            {
                Response.Redirect(string.Format("TravelItemPage?Guid={0}", e.Item.Cells[0].Text));
            }
        }

        public void ExportWord(TravelItem item)
        {
            string fileName = Guid.NewGuid().ToString() + ".doc";
            string fileFolder = System.AppDomain.CurrentDomain.BaseDirectory + "Word";
            TravelWord.ConfrimBase(item, fileName);
            Context.Response.ContentType = "Application/msword";
            string s = fileFolder + "\\" + fileName;
            Response.WriteFile(s);
            Response.Write(fileName);
            Response.Flush();
            Response.Close();
        }
    }
}