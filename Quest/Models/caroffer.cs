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
    
    public partial class caroffer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public caroffer()
        {
            this.userCarReservations = new HashSet<userCarReservation>();
        }
    
        public decimal carofferID { get; set; }
        public string companyName { get; set; }
        public string CarModel { get; set; }
        public string CarMark { get; set; }
        public Nullable<double> priceperday { get; set; }
        public string contactCompany { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<userCarReservation> userCarReservations { get; set; }
    }
}
