using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TwitterDB_v1._0.Data;
using TwitterDB_v1._0.Web.Models;

namespace TwitterDB_v1._0.Web.Controllers
{
    public class StatsController : ApiController
    {
        // GET: api/Stats
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Stats/year
        public IHttpActionResult Get(int year)
        {
            DataAccess data = new DataAccess();
            List<StatsModels> result = new List<StatsModels>();

            var stats = data.GetStatByYear(year);

            foreach (var item in stats)
            {
                StatsModels stat = new StatsModels();

                stat.Nation = item.Nation;
                stat.Prog_lang = item.Prog_lang;
                stat.Tweets = item.Tweets;
                stat.Month = item.Month;

                result.Add(stat);

            }

            return Ok(result);
        }

        // POST: api/Stats
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Stats/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Stats/5
        public void Delete(int id)
        {
        }
    }
}
