using FlyingSnow.Controls;
using FlyingSnow.Entries;
using FlyingSnow.Log;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlyingSnow.Web
{
    public partial class SiteMaster : MasterPage, ICallbackEventHandler
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;
        string a_result;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            //if (!HttpContext.Current.User.Identity.IsAuthenticated)
            //{
            //    Response.Redirect("~/Account/Login");
            //}
            //else if (HttpContext.Current.User.IsInRole("administrator"))
            //{
            //    this.manageLink.Visible = true;
            //}

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var user = HttpContext.Current.User;
            //var inrole = HttpContext.Current.User.IsInRole("administrator"); 
            if (HttpContext.Current.User.Identity.IsAuthenticated || true)
            {
                if (!Page.IsPostBack)
                {
                    LoadAgenciesTablePageAjax();
                    LoadTravelItemsTablePageAjax();
                }
                //if (HttpContext.Current.User.IsInRole("administrator"))
                //{
                //    //var userId = HttpContext.Current.User.Identity.GetUserId();
                //}
                //else if (HttpContext.Current.User.IsInRole("member"))
                //{
                //}
                //else
                //{
                //}
                //HttpContext.Current.User.IsInRole("administrator");
            }
            else
            {
                IdentityHelper.RedirectToReturnUrl("/Account/Login.aspx", Response);
            }
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut();
        }

        #region Ajax
        public void LoadAgenciesTablePageAjax()
        {
            ClientScriptManager csm = Page.ClientScript;
            string reference = csm.GetCallbackEventReference(this, "args", "LoadAgenciesAjaxSuccess", "", "LoadAgenciesAjaxError", false);
            string callbackScript = "function CallAgenciesAjax(args, context) {\n" +
               reference + ";\n }";
            csm.RegisterClientScriptBlock(this.GetType(), "CallAgenciesAjax", callbackScript, true);
        }

        public void LoadTravelItemsTablePageAjax()
        {
            ClientScriptManager csm = Page.ClientScript;
            string reference = csm.GetCallbackEventReference(this, "args", "LoadTravelItemsTablePageAjaxSuccess", "", "LoadTravelItemsTablePageAjaxError", false);
            string callbackScript = "function CallTravelItemsTablePageAjax(args, context) {\n" +
               reference + ";\n }";
            csm.RegisterClientScriptBlock(this.GetType(), "CallTravelItemsTablePageAjax", callbackScript, true);
        }
        #endregion

        private void GetAgenciesByFilter(string paraStr)
        {
            List<TravelAgency> _agencies = null;
            string _searchFlag = null;
            string _paraFlag = null;
            string _para = null;
            try
            {
                AgencyControl _agencyControl = new AgencyControl();
                if (string.IsNullOrEmpty(paraStr))
                {
                    _agencies = _agencyControl.GetAllAgencies();
                }
                else
                {
                    _searchFlag = paraStr.Substring(0, 4);
                    _paraFlag = paraStr.Substring(0, 5);
                    _para = paraStr.Substring(5);
                    _agencies = _agencyControl.GetAgenciesByFilter(_searchFlag, _para);
                }
                a_result = JsonConvert.SerializeObject(new { Agencies = _agencies, Flag = _paraFlag });
            }
            catch (Exception ex)
            {
                Logs.Error("GetAgenciesByFilter Exception:" + ex.ToString());
            }
        }

        public void RaiseCallbackEvent(string eventArgument)
        {
            string flag = eventArgument.Substring(0, 36);
            string paraStr = eventArgument.Substring(36);
            switch (flag)
            {
                case "7785411B-DF71-4AFE-98C9-FB9EB2953D89":
                    GetAgenciesByFilter(paraStr);
                    break;
                default:
                    break;
            }
        }

        public string GetCallbackResult()
        {
            return a_result;
        }
    }

}