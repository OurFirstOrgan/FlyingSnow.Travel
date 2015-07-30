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
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }

        private void BindData()
        {
            //using (var db = new ApplicationDbContext())
            //{
            //    var query = from u in db.Users
            //                from ur in u.Roles
            //                from r in db.Roles
            //                where ur.RoleId == r.Id
            //                select new { u.UserName, u.RealUserName, Permission = r.Name };
            //    UserAccountGridView.DataSource = query.ToList();
            //    UserAccountGridView.DataBind();
            //}
        }

        protected void UserAccountGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            e.Values[0].ToString();
        }

        protected void UserAccountGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            UserAccountGridView.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void UserAccountGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            UserAccountGridView.EditIndex = -1;
            BindData();
        }

        protected void UserAccountGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        private void GetUserControl()
        {
        }
    }
}