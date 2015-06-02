using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TwitterDB_v1._0.Data.ObjectModel
{
    public class Stats
    {
        public int Id { get; set; }

        public string Nation { get; set; }

        public string Prog_lang { get; set; }

        public int Tweets { get; set; }

        public int Year { get; set; }

        public int Month { get; set; }

    }
}
