//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Quest.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class entertainType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public entertainType()
        {
            this.entertainmentPlaces = new HashSet<entertainmentPlace>();
        }
    
        public decimal entertainmentTypeID { get; set; }
        public string typeDescr { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<entertainmentPlace> entertainmentPlaces { get; set; }
    }
}
