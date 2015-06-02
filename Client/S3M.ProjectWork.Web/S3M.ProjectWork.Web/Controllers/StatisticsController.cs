using S3M.ProjectWork.Data;
using S3M.ProjectWork.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace S3M.ProjectWork.Web.Controllers
{
    public class StatisticsController : ApiController
    {
        // GET: api/Statistics
        public IHttpActionResult Get()
        {
            DataAccess data = new DataAccess();
            var products = data.GetGenericStats();

            List<StatisticsModel> result = new List<StatisticsModel>();
            foreach (var item in products)
            {
                StatisticsModel statistic = new StatisticsModel();
                statistic.Prog_Lang = item.Prog_Lang;
                statistic.Tweets = item.Tweets;

                result.Add(statistic);
            }
            return Ok(result);
        }
    }
}
