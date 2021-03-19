using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria
{
    public class Personas
    {
        ventasEntities1 modelo = new ventasEntities1();

        public List<persona> getPersonaAdo
        {
            get { return modelo.persona.ToList(); }
           
        }

    }
}