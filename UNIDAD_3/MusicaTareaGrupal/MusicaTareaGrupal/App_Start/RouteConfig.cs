using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MusicaTareaGrupal
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Primero",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Genero", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Inicio",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Musica", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
