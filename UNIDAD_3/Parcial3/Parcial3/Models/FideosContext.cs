using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Parcial3.Models
{
    public class FideosContext : DbContext
    {
        public DbSet<Fideos> Fideos { get; set; }
    }
}