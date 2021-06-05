using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Parcial3.Models;

namespace Parcial3.Controllers
{
    public class FideosController : Controller
    {
        public ActionResult Index()
        {
            FideosContext fideosContext = new FideosContext();
            List<Fideos> fideos = fideosContext.Fideos.ToList();

            return View(fideos);
        }
        // GET: Fideos
        public ActionResult Detalle(int id)
        {
            FideosContext fideosContext = new FideosContext();
            Fideos fideos = fideosContext.Fideos.Single(fid => fid.Id == id);
            return View(fideos);
        }
    }
}