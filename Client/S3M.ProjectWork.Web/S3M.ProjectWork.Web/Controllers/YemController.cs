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
    public class YemController : ApiController
    {
        public IHttpActionResult Get()
        {
            DataAccess data = new DataAccess();
            var products1 = data.GetYears();
            var products2 = data.GetMonths();

            List<StatisticsModel> result = new List<StatisticsModel>();
            foreach (var item in products1)
            {
                StatisticsModel statistic = new StatisticsModel();
                statistic.Year = item.Year;
                statistic.Month = item.Month;

                result.Add(statistic);
            }

            foreach (var item in products2)
            {
                StatisticsModel statistic = new StatisticsModel();
                statistic.Year = item.Year;
                statistic.Month = item.Month;

                result.Add(statistic);
            }
            return Ok(result);
        }

        public IHttpActionResult Get(int year, int month)
        {
            DataAccess data = new DataAccess();
            var products = data.GetStatsByYearMonth(year, month);

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

