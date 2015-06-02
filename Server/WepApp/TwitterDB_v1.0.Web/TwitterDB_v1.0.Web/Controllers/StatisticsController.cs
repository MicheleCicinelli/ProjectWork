using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TwitterDB_v1._0.Web.Controllers
{
    public class StatisticsController : Controller
    {
        // GET: Statistics
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AllByYear(int year)
        {
            ViewBag.Year = year;
            return View();
        }
    }
}