using FlyingSnow.Controls;
using FlyingSnow.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web.Pages
{
    public partial class AgencyManager : System.Web.UI.Page
    {
        AgencyControl a_control = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }

        public void BindData()
        {
            GetAgencyControl();
            this.AgenciesDataGrid.DataSource = a_control.GetAgencies();
            this.AgenciesDataGrid.DataBind();
        }

        protected void AgenciesDataGrid_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName.Equals("AgencyDetail"))
            {
                Response.Redirect(string.Format("AgencyInfo?Code={0}", e.Item.Cells[1].Text));
            }
        }

        protected void AgenciesDataGrid_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            GetAgencyControl();
            if (a_control.DeleteAgencyByGuid(new Guid(e.Item.Cells[0].Text)))
            {
                BindData();
            }
            else
            {
                Response.Write("<script language=javascript>alert('删除失败');</script>");
            }
        }

        protected void SearchBox_TextChanged(object sender, EventArgs e)
        {
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string str = this.SearchTextBox.Text;

            if (RegExps.IsNumAndEnCh(str))
            {
                
            }
            else
            {

            }
        }

        private void GetAgencyControl()
        {
            if (a_control == null)
            {
                a_control = new AgencyControl();
            }
        }
    }
}