using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FlyingSnow.Database
{
    public class DatabaseInitializer : DropCreateDatabaseIfModelChanges<EntryContext>
    {
        protected override void Seed(EntryContext context)
        {
            base.Seed(context);
        }
    }
}
