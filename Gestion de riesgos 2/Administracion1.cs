//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gestion_de_riesgos_2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Administracion1
    {
        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Evento { get; set; }
        public string Tipo_de_riesgo { get; set; }
        public string Tolerancia_del_Riesgo { get; set; }
        public Nullable<double> NiveldelRiesgo_inherente { get; set; }
        public Nullable<double> NiveldelRiesgoResidual1 { get; set; }
        public string Grado_de_afectación { get; set; }
        public string Importancia_del_Objetivo_del_Proceso__actividades__tareas_ { get; set; }
        public Nullable<double> Variacióndelniveldelriesgoconcontroles { get; set; }
        public string Análisis_costo_beneficio { get; set; }
        public string Aceptabilidad_del_riesgo { get; set; }
        public string Resultado_de_la_evaluación { get; set; }
        public Nullable<double> NiveldelRiesgoresidual2 { get; set; }
    }
}
