//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MasterPolProject.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class PartnerProducts
    {
        public int ID { get; set; }
        public int ProductID { get; set; }
        public int PartnerID { get; set; }
        public int ProductQuantity { get; set; }
        public System.DateTime SellDate { get; set; }
    
        public virtual Partners Partners { get; set; }
        public virtual Products Products { get; set; }
    }
}
