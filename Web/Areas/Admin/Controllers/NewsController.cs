using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web.Attributes;
using Web.Models;

namespace Web.Areas.Admin.Controllers
{
    [AdminAuthorize]
    [PemisitonAttribute("Tin tức")]
    public class NewsController : BaseController
    {
        // GET: Admin/News
        public ActionResult Index()
        {
            var list = Db.TinTucs.ToList();
            return View(list);
        }

        public ActionResult Add()
        {
            return View(new TinTuc());
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Add(TinTuc model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var obj = Db.TinTucs.FirstOrDefault(x => x.TieuDe == model.TieuDe);
                    if (obj == null)
                    {
                        HttpCookie cookie = Request.Cookies.Get("MaTaiKhoan");
                        model.MaTaiKhoan = int.Parse(cookie.Value);
                        model.NgayDang = DateTime.Now;
                        Db.TinTucs.Add(model);
                        Db.SaveChanges();
                        TempData["notice"] = "Thêm thành công!";

                        return RedirectToAction("Index");
                    }
                    else
                    {
                        TempData["notice"] = "Tiêu đề đã tồn tại! Vui lòng chọn tên khác!";
                    }
                }
                catch
                {
                    TempData["notice"] = "Thêm không thành công!";
                }
            }

            return View(model);
        }

        public ActionResult Edit(int id)
        {
            var model = Db.TinTucs.FirstOrDefault(x => x.MaTinTuc == id);
            return View(model);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(TinTuc model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var objCheck = Db.TinTucs.FirstOrDefault(x => x.TieuDe == model.TieuDe && x.MaTinTuc != model.MaTinTuc);
                    if (objCheck == null)
                    {
                        HttpCookie cookie = Request.Cookies.Get("MaTaiKhoan");

                        var obj = Db.TinTucs.FirstOrDefault(x => x.MaTinTuc == model.MaTinTuc);
                        obj.TieuDe = model.TieuDe;
                        obj.HinhAnh = model.HinhAnh;
                        obj.NoiDung = model.NoiDung;
                        obj.MaTaiKhoan = int.Parse(cookie.Value);

                        Db.TinTucs.Attach(obj);
                        Db.Entry(obj).State = EntityState.Modified;
                        Db.SaveChanges();
                        TempData["notice"] = "Sửa thành công!";

                        return RedirectToAction("Index");
                    }
                    else
                    {
                        TempData["notice"] = "Tiêu đề đã tồn tại! Vui lòng chọn tên khác!";
                    }
                }
                catch
                {
                    TempData["notice"] = "Sửa không thành công!";
                }
            }
            return View(model);
        }

        public ActionResult Delete(int id)
        {
            try
            {
                var model = Db.TinTucs.FirstOrDefault(x => x.MaTinTuc == id);
                Db.TinTucs.Attach(model);
                Db.Entry(model).State = EntityState.Deleted;
                Db.TinTucs.Remove(model);
                Db.SaveChanges();
                TempData["notice"] = "Xóa thành công!";
            }
            catch
            {
                TempData["notice"] = "Xóa không thành công! Nguyên nhân: Có ràng buộc cơ sở dữ liệu!";
            }

            return RedirectToAction("Index");
        }
    }
}