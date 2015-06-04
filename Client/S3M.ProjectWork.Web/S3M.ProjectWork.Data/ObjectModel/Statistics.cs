using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace S3M.ProjectWork.Data.ObjectModel
{
    public class Statistics
    {
        public int? Id { get; set; }
        public string Nation { get; set; }
        public string Prog_Lang { get; set; }
        public int? Tweets { get; set; }
        public int? Year { get; set; }
        public int? Month { get; set; }
    }
}
