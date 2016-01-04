using FlyingSnow.Entries;
using FlyingSnow.Log;
using FlyingSnow.Travel.OfficeHelper;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;

namespace FlyingSnow.Web.Logic
{
    /// <summary>
    /// Summary description for FileHandler
    /// </summary>
    public class FileHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            NameValueCollection requestCollection = null;
            try
            {
                requestCollection = context.Request.HttpMethod.Equals("post", StringComparison.OrdinalIgnoreCase) ? context.Request.Form : context.Request.QueryString;
                if (requestCollection.HasKeys())
                {
                    string requestFunction = requestCollection["func"];
                    switch (requestFunction)
                    {
                        case "ExportConfirmation":
                            ExportConfirmation(requestCollection, context);
                            break;
                        default:
                            context.Response.ContentType = "text/plain";
                            context.Response.Write(string.Format("Invalid {0} request.", context.Request.HttpMethod));
                            break;
                    }
                }
            }
            catch (System.Threading.ThreadAbortException) { }
            catch (Exception ex)
            {
                Logs.Error("ProcessRequest Exception:" + ex.ToString());
            }
        }

        private void ExportConfirmation(NameValueCollection requestCollection, HttpContext context)
        {
            try
            {
                string travelItemStr = requestCollection["travelItem"];
                string fileName = Guid.NewGuid().ToString() + ".doc";
                string fileFolder = System.AppDomain.CurrentDomain.BaseDirectory + "Word";
                TravelItem item = JsonConvert.DeserializeObject<TravelItem>(travelItemStr);

                TravelWord.ConfrimBase(item, fileName);
                context.Response.ContentType = "Application/msword";
                context.Response.AddHeader("Content-DisPosition", string.Format("attachment; filename=\"{0}\"", fileName));
                string s = fileFolder + "\\" + fileName;
                context.Response.WriteFile(s);
                context.Response.Write(fileName);
                context.Response.Flush();
                context.Response.Close();
            }
            catch (Exception ex)
            {
                Logs.Error("ExportConfirmation Exception:" + ex.ToString());
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}