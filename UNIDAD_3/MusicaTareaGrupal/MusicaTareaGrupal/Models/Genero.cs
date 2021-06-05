using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MusicaTareaGrupal.Models
{
    [Table("Generos")]
    public class Genero
    {
        [Key]
        public int codigo_genero { get; set; }
        public string nombre_genero { get; set; }
        public List<Musica> Musicas { get; set; }
    }
}