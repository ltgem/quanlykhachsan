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
    
    public partial class ChiTietThanhToan
    {
        public int MaChiTietThanhToan { get; set; }
        public Nullable<int> MaPhongKhachHang { get; set; }
        public Nullable<int> TienThanhToan { get; set; }
        public Nullable<System.DateTime> ThoiGianThanhToan { get; set; }
        public string GhiChu { get; set; }
    
        public virtual PhongKhachHang PhongKhachHang { get; set; }
    }
}
