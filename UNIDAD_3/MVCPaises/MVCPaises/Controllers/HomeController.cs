using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCPaises.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home

        // Codigo normal (no demuestra nada en el navegador)
        /* public List<string> Index()
        {
            return new List<string>()
            {
                "Belice",
                "Guatemala",
                "El Salvador",
                "Honduras",
                "Nicaragua",
                "Costa Rica",
                "Panamá"
            };
        } */

        // Código utilizando ViewBag
        /* public ActionResult Index()
        {
            ViewBag.Paises = new List<string>()
            {
                "Belice",
                "Guatemala",
                "El Salvador",
                "Honduras",
                "Nicaragua",
                "Costa Rica",
                "Panamá"
            };

            return View();
        } */

        // Código utilizando ViewData
        public ActionResult Index()
        {
            ViewData["Paises"] = new List<string>()
            {
                "Belice",
                "Guatemala",
                "El Salvador",
                "Honduras",
                "Nicaragua",
                "Costa Rica",
                "Panamá"
            };
            return View();
        }
    }
}