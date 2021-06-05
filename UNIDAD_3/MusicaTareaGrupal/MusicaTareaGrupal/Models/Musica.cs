using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MusicaTareaGrupal.Models
{
    [Table("Canciones")]
    public class Musica
    {
        [Key]
        public int codigo_cancion { get; set; }
        public string nombre_artista { get; set; }
        public string nombre_cancion { get; set; }
        public int anio_cancion { get; set; }
        public int codigo_genero { get; set; }
    }
}