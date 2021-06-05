using MusicaTareaGrupal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MusicaTareaGrupal.Models
{
    public class GeneroController : Controller
    {
        // GET: Genero
        public ActionResult Index()
        {
            MusicaContext musicaContext = new MusicaContext();
            List<Genero> generos = musicaContext.Generos.ToList();

            return View(generos);
        }
    }
}