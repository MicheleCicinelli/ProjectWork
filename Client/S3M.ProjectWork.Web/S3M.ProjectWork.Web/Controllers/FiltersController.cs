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

        // GET: Filters
        public ActionResult NationStats( int whichget, string param)
        {
            ViewBag.Param = param;
            ViewBag.Whichget = whichget;
            return View();
        }

        // GET: Filters
        public ActionResult LangStats(int whichget, string param)
        {
            ViewBag.Param = param;
            ViewBag.Whichget = whichget;
            return View();
        }

        // GET: Filters
        public ActionResult periodStats(int year, int month)
        {
            ViewBag.Year = year;
            ViewBag.Month = month;
            return View();
        }
    }
}