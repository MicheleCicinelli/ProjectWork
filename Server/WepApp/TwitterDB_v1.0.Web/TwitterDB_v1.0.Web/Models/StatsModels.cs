using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TwitterDB_v1._0.Web.Models
{
    public class StatsModels
    {
        public int Id { get; set; }

        public string Nation { get; set; }

        public string Prog_lang { get; set; }

        public int Tweets { get; set; }

        public int Year { get; set; }

        public int Month { get; set; }

    }
}