using Aspose.Words;
using FlyingSnow.Entries;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Travel.OfficeHelper
{
    public class TravelWord : WordHelper
    {
        static string tempFolder = System.AppDomain.CurrentDomain.BaseDirectory.Replace("FlyingSnow.Web", "FlyingSnow.Travel.OfficeHelper") + "Template";
        static string outputFolder = System.AppDomain.CurrentDomain.BaseDirectory + "Word";

        public static readonly TravelWord instance = new TravelWord();
        public TravelWord()
            : base()
        {
            if (!Directory.Exists(tempFolder))
            {
                Directory.CreateDirectory(tempFolder);
            }
        }

        public static void ConfrimBase(TravelItem item, string fileName)
        {
            string[] fieldNames = new string[]{
                "rtaName",
                "rtaPhone",
                "rtaFax",
                "rtaPrincipal",
                "otaConfimer",
                "date1",
                "date2"
            };

            object[] fieldValues = new object[]{
                item.Agency.AgencyName,
                item.Agency.AgencyPrincipalPhone,
                item.Agency.AgencyFax,
                item.Agency.AgencyPrincipal,
                item.Agency.AgencyPrincipal,
                item.TravelDate.ToString("yyyy 年 MM 月 dd 日"),
                item.TravelDate.ToString("yyyy 年 MM 月 dd 日")
            };

            var doc = new Document(tempFolder + "\\Confirmation.doc");
            doc.MailMerge.Execute(fieldNames, fieldValues);
            doc.Save(outputFolder + "\\" + fileName);
        }
    }
}
