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
    public class LangController : ApiController
    {
        public IHttpActionResult Get()
        {
            DataAccess data = new DataAccess();
            var products = data.GetProgLangs();

            List<StatisticsModel> result = new List<StatisticsModel>();
            foreach (var item in products)
            {
                StatisticsModel statistic = new StatisticsModel();
                statistic.Prog_Lang = item.Prog_Lang;

                result.Add(statistic);
            }
            return Ok(result);
        }

        public IHttpActionResult Get(string lang)
        {
            DataAccess data = new DataAccess();
            var products = data.GetGenericStatsByLang(lang);

            List<StatisticsModel> result = new List<StatisticsModel>();
            foreach (var item in products)
            {
                StatisticsModel statistic = new StatisticsModel();
                statistic.Nation = item.Nation;
                statistic.Tweets = item.Tweets;

                result.Add(statistic);
            }
            return Ok(result);
        }
    }
}
