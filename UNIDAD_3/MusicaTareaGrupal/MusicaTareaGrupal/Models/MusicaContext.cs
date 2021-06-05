using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MusicaTareaGrupal.Models
{
    public class MusicaContext : DbContext
    {
        public DbSet<Musica> Musicas { get; set; }
        public DbSet<Genero> Generos { get; set; }
    }
}