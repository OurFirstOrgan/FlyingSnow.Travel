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
    public partial class AgencyTypeIn : System.Web.UI.Page
    {
        AgencyControl a_control = null;
        TravelAgency a_agency;
        protected void Page_Load(object sender, EventArgs e)
        {
            string code = null;
            if (!IsPostBack)
            {
                code = Request.QueryString["Code"];
                if (!string.IsNullOrEmpty(code))
                {
                    GetAgencyControl();
                    var item = a_control.GetAgenciesByFilter("Code", code)[0];
                    BindData(item);
                    a_agency = item;
                    ChangeInputFieldState(false);
                    this.CreateButton.Visible = false;
                    this.EditButton.Visible = true;
                }
            }
        }

        #region Event
        protected void TypeIn_Click(object sender, EventArgs e)
        {
            GetAgencyControl();

            TravelAgency agency = new TravelAgency();
            agency.AgencyGuid = Guid.NewGuid();
#if  true
            agency.AgencyCode = this.AgencyCode.Text;
            agency.AgencyName = this.AgencyName.Text;
            agency.AgencyFax = this.AgencyFax.Text;
            agency.AgencyPrincipal = this.AgencyPrincipal.Text;
            agency.AgencyPrincipalPhone = this.AgencyPrincipalPhone.Text;
            agency.AgencyAddress = this.AgencyAddress.Text;
#else
            agency.AgencyCode = "A003";
            agency.AgencyName = "飞雪旅行社";
            agency.AgencyPhonesList = new List<string>();
            agency.AgencyPhonesList.Add("18602410279");
            agency.AgencyFax = "024-77814515";
            agency.AgencyPrincipal = "张浩";
            agency.AgencyPrincipalPhone = "18602410279";
            agency.AgencyAddress = "沈阳";
#endif
            if (a_control.CreateAgency(agency))
            {
                Response.Redirect("AgencyManager");
            }
            else
            {
                FailureText.Text = "录入失败：检查是否存在或稍后重试！";
                ErrorMessage.Visible = true;
            }
        }
        protected void Edit_Click(object sender, EventArgs e)
        {
            this.EditButton.Visible = false;
            this.UpdateButton.Visible = true;
            ChangeInputFieldState(true);
        }
        protected void Update_Click(object sender, EventArgs e)
        {
            GetAgencyControl();
            TravelAgency agency = new TravelAgency();
            agency.Id = Convert.ToInt32(this.HideId.Text);
            agency.AgencyGuid = new Guid(this.HideGuid.Text);
            agency.AgencyCode = this.AgencyCode.Text;
            agency.AgencyName = this.AgencyName.Text;
            //agency.AgencyPhonesList = new List<string>();
            //agency.AgencyPhonesList.Add(this.AgencyPhone.Text);
            agency.AgencyFax = this.AgencyFax.Text;
            agency.AgencyPrincipal = this.AgencyPrincipal.Text;
            agency.AgencyPrincipalPhone = this.AgencyPrincipalPhone.Text;
            agency.AgencyAddress = this.AgencyAddress.Text;
            if (a_control.UpdateAgency(agency))
            {
                Response.Redirect("AgencyManager");
            }
            else
            {
                FailureText.Text = "更新失败！";
                ErrorMessage.Visible = true;
            }
        }
        #endregion


        #region Private Method
        private void BindData(TravelAgency agency)
        {
            this.HideId.Text = agency.Id.ToString();
            this.HideGuid.Text = agency.AgencyGuid.ToString();
            this.AgencyCode.Text = agency.AgencyCode;
            this.AgencyName.Text = agency.AgencyName;
            this.AgencyPhone.Text = agency.AgencyPrincipalPhone;
            this.AgencyFax.Text = agency.AgencyFax;
            this.AgencyPrincipal.Text = agency.AgencyPrincipal;
            this.AgencyPrincipalPhone.Text = agency.AgencyPrincipalPhone;
            this.AgencyAddress.Text = agency.AgencyAddress;
        }

        private void ChangeInputFieldState(bool flag)
        {
            this.AgencyCode.Enabled = flag;
            this.AgencyName.Enabled = flag;
            this.AgencyPhone.Enabled = flag;
            this.AgencyFax.Enabled = flag;
            this.AgencyPrincipal.Enabled = flag;
            this.AgencyPrincipalPhone.Enabled = flag;
            this.AgencyAddress.Enabled = flag;
        }

        private void GetAgencyControl()
        {
            if (a_control == null)
            {
                a_control = new AgencyControl();
            }
        }
        #endregion
    }
}