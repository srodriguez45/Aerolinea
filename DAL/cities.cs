//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class cities
    {
        public cities()
        {
            this.flights = new HashSet<flights>();
        }
    
        public int idCity { get; set; }
        public string cityName { get; set; }
        public string citySource { get; set; }
        public string countrySorce { get; set; }
    
        public virtual ICollection<flights> flights { get; set; }
    }
}
