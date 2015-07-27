using FlyingSnow.Log;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Travel.OfficeHelper
{
    public class WordHelper
    {
        public WordHelper()
        {
            License();
        }

        private static void License()
        {
            try
            {
                const string licName = "Internal.lic";
                var wlic = new Aspose.Words.License();
                wlic.SetLicense(licName);
            }
            catch (Exception ex)
            {
                Logs.Error("WordHelper License Exception : " + ex.ToString());
            }
        }
    }
}
