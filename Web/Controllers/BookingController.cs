using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web.Models;

namespace Web.Controllers
{
    public class BookingController : BaseController
    {
        // GET: Booking
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(int? loaiphong, DateTime? ngayden, DateTime? ngaydi, int? sophong, int? songuoi)
        {
            if (loaiphong != null && ngayden != null && ngaydi != null && sophong != null && songuoi != null)
            {
                var donDatPhong = new DonDatPhong
                {
                    NgayDatPhong = DateTime.Now,
                    NgayDen = ngayden,
                    NgayDi = ngaydi
                };

                Session["DonDatPhong"] = donDatPhong;

                var chiTiet = new ChiTietDonDatPhong
                {
                    MaLoaiPhong = loaiphong.Value,
                    LoaiPhong = db.LoaiPhongs.FirstOrDefault(x => x.MaLoaiPhong == loaiphong),
                    SoNguoi = songuoi,
                    SoPhong = sophong
                };
                var listChiTiet = new List<ChiTietDonDatPhong>();
                listChiTiet.Add(chiTiet);
                Session["ChiTietDonDatPhong"] = listChiTiet;
            }

            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult Add(int? loaiphong, int? sophong, int? songuoi)
        {
            if (loaiphong != null && sophong != null && songuoi != null)
            {
                var chiTiet = new ChiTietDonDatPhong
                {
                    MaLoaiPhong = loaiphong.Value,
                    LoaiPhong = db.LoaiPhongs.FirstOrDefault(x => x.MaLoaiPhong == loaiphong),
                    SoNguoi = songuoi,
                    SoPhong = sophong
                };
                if (Session["ChiTietDonDatPhong"] != null)
                {
                    var chitetdatphongs = Session["ChiTietDonDatPhong"] as List<ChiTietDonDatPhong>;
                    if (chitetdatphongs.Count(x => x.MaLoaiPhong == loaiphong) == 0)
                    {
                        chitetdatphongs.Add(chiTiet);
                        Session["ChiTietDonDatPhong"] = chitetdatphongs;
                        TempData["mess"] = "Thêm thành công";
                    }
                    else
                    {
                        var chitiet = chitetdatphongs.FirstOrDefault(x => x.MaLoaiPhong == loaiphong);
                        chitetdatphongs = chitetdatphongs.Where(x => x.MaLoaiPhong != loaiphong).ToList();
                        chitiet.SoPhong = chitiet.SoPhong + sophong;
                        chitiet.SoNguoi = chitiet.SoNguoi + songuoi;
                        chitetdatphongs.Add(chitiet);

                        Session["ChiTietDonDatPhong"] = chitetdatphongs;
                        TempData["mess"] = "Thêm thành công";
                    }
                }
                else
                {
                    var listChiTiet = new List<ChiTietDonDatPhong>();
                    listChiTiet.Add(chiTiet);
                    Session["ChiTietDonDatPhong"] = listChiTiet;
                    TempData["mess"] = "Thêm thành công";
                }
            }

            return RedirectToAction("Index");
        }


        public ActionResult Delete(int id)
        {
            if (Session["ChiTietDonDatPhong"] != null)
            {
                var chitetdatphongs = Session["ChiTietDonDatPhong"] as List<ChiTietDonDatPhong>;
                chitetdatphongs = chitetdatphongs.Where(x => x.MaLoaiPhong != id).ToList();
                Session["ChiTietDonDatPhong"] = chitetdatphongs;
                TempData["mess"] = "Xóa thành công";
            }
            else
            {
                TempData["mess"] = "Xóa không thành công";
            }
            return RedirectToAction("Index");
        }

        public ActionResult Send(DateTime? ngayden, DateTime? ngaydi, string hoten, string sdt, string email, string ghichu)
        {
            if (Session["ChiTietDonDatPhong"] != null)
            {
                if (ngayden != null && ngaydi != null && hoten != null && sdt != null)
                {
                    if (ngayden > ngaydi)
                    {
                        var donDatPhongA = new DonDatPhong
                        {
                            NgayDen = ngayden,
                            NgayDi = ngaydi,
                            NgayDatPhong = DateTime.Now,
                            Email = email,
                            GhiChu = ghichu,
                            HoTen = hoten,
                            SoDienThoai = sdt
                        };
                        Session["DonDatPhongA"] = donDatPhongA;
                        TempData["mess"] = "Ngày đến phải nhỏ hơn ngày đi";
                        return RedirectToAction("Index");
                    }

                    var chitetdatphongs = Session["ChiTietDonDatPhong"] as List<ChiTietDonDatPhong>;
                    var donDatPhong = new DonDatPhong
                    {
                        NgayDen = ngayden,
                        NgayDi = ngaydi,
                        NgayDatPhong = DateTime.Now,
                        Email = email,
                        GhiChu = ghichu,
                        HoTen = hoten,
                        SoDienThoai = sdt,
                        MaTaiKhoan = 1,
                        TrangThai = "Mới"
                    };

                    db.DonDatPhongs.Add(donDatPhong);
                    db.SaveChanges();

                    foreach (var item in chitetdatphongs)
                    {
                        var chitiet = new ChiTietDonDatPhong
                        {
                            MaDonDatPhong = donDatPhong.MaDonDatPhong,
                            MaLoaiPhong = item.MaLoaiPhong,
                            SoPhong = item.SoPhong,
                            SoNguoi = item.SoNguoi
                        };

                        db.ChiTietDonDatPhongs.Add(chitiet);
                        db.SaveChanges();
                    }

                    Session["ChiTietDonDatPhong"] = null;
                    Session["DonDatPhongA"] = null;
                    Session["DonDatPhong"] = null;

                    return View("_ThankYou");
                }
                else
                {
                    var donDatPhong = new DonDatPhong
                    {
                        NgayDen = ngayden,
                        NgayDi = ngaydi,
                        NgayDatPhong = DateTime.Now,
                        Email = email,
                        GhiChu = ghichu,
                        HoTen = hoten,
                        SoDienThoai = sdt
                    };
                    Session["DonDatPhongA"] = donDatPhong;

                    TempData["mess"] = "Chưa cung cấp đầy đủ thông tin ngày đến, ngày đi, họ tên, số điện thoại";
                }
            }
            else
            {
                var donDatPhong = new DonDatPhong
                {
                    NgayDen = ngayden,
                    NgayDi = ngaydi,
                    NgayDatPhong = DateTime.Now,
                    Email = email,
                    GhiChu = ghichu,
                    HoTen = hoten,
                    SoDienThoai = sdt
                };
                Session["DonDatPhongA"] = donDatPhong;

                TempData["mess"] = "Chưa cung cấp đầy đủ thông tin loại phòng, số người, số phòng";
            }
            return RedirectToAction("Index");
        }
    }
}