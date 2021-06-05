﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Ejemplo1MVC.Controllers
{
    public class HomeController : Controller
    {
        public string Index(string id, string nombre)
        {
            return "id = " + id + "<br>nombre = " + nombre;
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}