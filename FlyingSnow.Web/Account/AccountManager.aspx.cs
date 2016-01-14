using FlyingSnow.Web.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web.Account
{
    public partial class AccountManager : System.Web.UI.Page
    {
        RoleActions a_control = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //BindData();
            }
        }

        private void BindData()
        {
            GetUserControl();
            UserAccountGridView.DataSource = a_control.GetBindingDate();
            UserAccountGridView.DataBind();
        }

        protected void UserAccountGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GetUserControl();
            a_control.RemoveUser(e.Values[0].ToString());
            BindData();
        }

        protected void UserAccountGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            UserAccountGridView.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void UserAccountGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GetUserControl();
            string username = UserAccountGridView.Rows[e.RowIndex].Cells[0].Text;
            string realName = e.NewValues[0].ToString();
            string permission = e.NewValues[1].ToString();
            a_control.UpdateUser(username, realName, permission);
            UserAccountGridView.EditIndex = -1;
            BindData();
        }

        protected void UserAccountGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            UserAccountGridView.EditIndex = -1;
            BindData();
        }

        private void GetUserControl()
        {
            if (a_control == null)
            {
                a_control = new RoleActions();
            }
        }
    }
}