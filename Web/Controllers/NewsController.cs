using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;

namespace Web.Controllers
{
    public class NewsController : BaseController
    {
        // GET: News
        public ActionResult Index(int? page)
        {
            var news = db.TinTucs.OrderByDescending(x => x.NgayDang).ToList();
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(news.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult Detail(int? id)
        {
            try
            {
                var model = db.TinTucs.FirstOrDefault(x => x.MaTinTuc == id);
                if (model == null)
                {
                    return RedirectToAction("Index");
                }
                return View(model);
            }
            catch (Exception e)
            {
                return RedirectToAction("Index");
            }
        }
    }
}