//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wpf_Diplom_2_Pisarev_Aleksei
{
    using System;
    using System.Collections.Generic;
    
    public partial class Complect_oborud
    {
        public int Id_complect { get; set; }
        public int Id_oborud { get; set; }
        public int Id_tipa_complect { get; set; }
        public int Id_firmi { get; set; }
        public string Model { get; set; }
        public int Id_sklad { get; set; }
    
        public virtual Firmi Firmi { get; set; }
        public virtual Oborudovanie Oborudovanie { get; set; }
        public virtual Sklade Sklade { get; set; }
        public virtual Tipi_complect Tipi_complect { get; set; }
    }
}
