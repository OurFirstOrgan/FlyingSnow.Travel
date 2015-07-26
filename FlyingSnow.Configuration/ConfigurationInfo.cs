using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Configuration
{
    public class ConfigurationInfo
    {
        public static bool EnableDebugLog
        {
            get
            {
                try
                {
                    return Convert.ToBoolean(ConfigurationManager.AppSettings["EnableDebugLog"]);
                }
                catch (Exception)
                {
                    return false;
                }
            }
        }
    }
}
