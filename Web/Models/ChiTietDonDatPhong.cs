//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Web.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChiTietDonDatPhong
    {
        public int MaChiTiet { get; set; }
        public int MaLoaiPhong { get; set; }
        public int MaDonDatPhong { get; set; }
        public Nullable<int> SoPhong { get; set; }
        public Nullable<int> SoNguoi { get; set; }
    
        public virtual DonDatPhong DonDatPhong { get; set; }
        public virtual LoaiPhong LoaiPhong { get; set; }
    }
}
