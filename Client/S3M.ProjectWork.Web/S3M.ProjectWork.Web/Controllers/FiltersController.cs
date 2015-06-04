using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace S3M.ProjectWork.Web.Controllers
{
    public class FiltersController : Controller
    {
        // GET: Filters
        public ActionResult GlobalStats()
        {
            return View();
        }

        public ActionResult NationStats(string nation)
        {
            ViewBag.Nation = nation;
            return View();
        }

        // GET: Filters
        public ActionResult LangStats(string lang)
        {
            ViewBag.Lang = lang;
            return View();
        }

        public ActionResult PeriodStats(int year, int month)
        {
            ViewBag.Year = year;
            ViewBag.Month = month;
            return View();
        }

        public ActionResult YearStats(int year, string lang)
        {
            ViewBag.Year = year;
            ViewBag.Lang = lang;
            return View();
        }
    }
}