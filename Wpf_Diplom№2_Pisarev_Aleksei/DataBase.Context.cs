﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class BD_Diplom_PisarevEntities : DbContext
    {

        private static BD_Diplom_PisarevEntities _context;

        public static BD_Diplom_PisarevEntities GetContext()
        {
            if (_context == null) 
                _context = new BD_Diplom_PisarevEntities();
            return _context;

        }

        public BD_Diplom_PisarevEntities()
            : base("name=BD_Diplom_PisarevEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Complect_oborud> Complect_oborud { get; set; }
        public virtual DbSet<Doljnosti> Doljnosti { get; set; }
        public virtual DbSet<Firmi> Firmi { get; set; }
        public virtual DbSet<Haracteristiki> Haracteristiki { get; set; }
        public virtual DbSet<Haracteristiki_Complect> Haracteristiki_Complect { get; set; }
        public virtual DbSet<Hatacteristiki_PO> Hatacteristiki_PO { get; set; }
        public virtual DbSet<Oborudovanie> Oborudovanie { get; set; }
        public virtual DbSet<Odsujd_zayavki> Odsujd_zayavki { get; set; }
        public virtual DbSet<Otdeli> Otdeli { get; set; }
        public virtual DbSet<PO> PO { get; set; }
        public virtual DbSet<Role_Sotrudniki> Role_Sotrudniki { get; set; }
        public virtual DbSet<Sklade> Sklade { get; set; }
        public virtual DbSet<Sotrudniki> Sotrudniki { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Temi_zayavok> Temi_zayavok { get; set; }
        public virtual DbSet<Tipi_complect> Tipi_complect { get; set; }
        public virtual DbSet<Tipi_oborud> Tipi_oborud { get; set; }
        public virtual DbSet<Tipi_PO> Tipi_PO { get; set; }
        public virtual DbSet<Zayavki> Zayavki { get; set; }
    }
}
