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
    
    public partial class Haracteristiki_Complect
    {
        public int Id_haracter_compl { get; set; }
        public int Id_complect { get; set; }
        public int Id_haracteristiki { get; set; }
        public string Znahenie { get; set; }
        public int Id_topa_complect { get; set; }
        public int Id_Sklad { get; set; }
    
        public virtual Haracteristiki Haracteristiki { get; set; }
    }
}
