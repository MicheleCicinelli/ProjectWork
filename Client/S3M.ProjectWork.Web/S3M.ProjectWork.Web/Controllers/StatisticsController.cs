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
        //public IHttpActionResult Get()
        //{
        //    DataAccess data = new DataAccess();
        //    var products = data.GetGenericStats();

        //    List<StatisticsModel> result = new List<StatisticsModel>();
        //    foreach (var item in products)
        //    {
        //        StatisticsModel statistic = new StatisticsModel();
        //        statistic.Prog_Lang = item.Prog_Lang;
        //        statistic.Tweets = item.Tweets;

        //        result.Add(statistic);
        //    }
        //    return Ok(result);
        //}

        // GET: api/Statistics
        public IHttpActionResult Get(int whichget, string param)
        {
            DataAccess data = new DataAccess();
            List<StatisticsModel> result = new List<StatisticsModel>();
            switch (whichget)
            {
                case 0://global stats
                    var products0 = data.GetGenericStats();

                    foreach (var item in products0)
                    {
                        StatisticsModel statistic = new StatisticsModel();
                        statistic.Prog_Lang = item.Prog_Lang;
                        statistic.Tweets = item.Tweets;

                        result.Add(statistic);
                    }
                    break;
                case 1://stats by nation
                    var products1 = data.GetGenericStatsByNations(param);

                    foreach (var item in products1)
                    {
                        StatisticsModel statistic = new StatisticsModel();
                        statistic.Prog_Lang = item.Prog_Lang;
                        statistic.Tweets = item.Tweets;

                        result.Add(statistic);
                    }
                    break;
                case 2://stats by lang
                    var products2 = data.GetGenericStatsByLang(param);

                    foreach (var item in products2)
                    {
                        StatisticsModel statistic = new StatisticsModel();
                        statistic.Nation = item.Nation;
                        statistic.Tweets = item.Tweets;

                        result.Add(statistic);
                    }
                    break;
            }
            return Ok(result);
        }

        public IHttpActionResult Get(int year, int month)
        {
            DataAccess data = new DataAccess();
            List<StatisticsModel> result = new List<StatisticsModel>();
            var products0 = data.GetGenericStatsByPeriod(year, month);

            foreach (var item in products0)
            {
                StatisticsModel statistic = new StatisticsModel();
                statistic.Prog_Lang = item.Prog_Lang;
                statistic.Tweets = item.Tweets;
                //fix mapping
                result.Add(statistic);
            }


            return Ok(result);
        }
    }

}

