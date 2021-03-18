﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria
{
    public partial class VerDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDataLinq();
            }
            
        }

        public void GetDataLinq()
        {
            var data = new ServicioLinQDataContext();
            var personas = from u in data.GetTable<persona>() select u;
            gridViewLinQ.DataSource = personas.ToList(); //data.GetPersonas();
            gridViewLinQ.DataBind();
        }

    }
}