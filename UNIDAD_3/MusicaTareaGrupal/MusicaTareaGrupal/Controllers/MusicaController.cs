using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MusicaTareaGrupal.Models;

namespace MusicaTareaGrupal.Controllers
{
    public class MusicaController : Controller
    {
        public ActionResult Index(int id)
        {
            MusicaContext musicaContext = new MusicaContext();
            List<Musica> musicas = musicaContext.Musicas.Where(mus => mus.codigo_genero == id).ToList();

            return View(musicas);
        }
        // GET: Musica
        public ActionResult Detalle(int id)
        {
            MusicaContext musicaContext = new MusicaContext();
            Musica musica = musicaContext.Musicas.Single(mus => mus.codigo_cancion == id);
            
            return View(musica);
        }
    }
}