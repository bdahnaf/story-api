using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BusinessLayer;

namespace Cefalo.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            StoryBusinessLayer storyBusinessLayerObj = new StoryBusinessLayer();
            List<Story> storiesObj = storyBusinessLayerObj.Stories.ToList();
            return View(storiesObj);
        }


        [HttpGet]
        [ActionName("Create")]
        public ActionResult Create_Get()
        {
            return View();
        }

        [HttpPost]
        [ActionName("Create")]
        public ActionResult Create_Post()
        {
            Story storyObj = new Story();
            TryUpdateModel(storyObj);

            if (ModelState.IsValid)
            {
                StoryBusinessLayer storyBusinessLayerObj = new StoryBusinessLayer();
                storyBusinessLayerObj.AddStory(storyObj);
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        public ActionResult Edit(int ID)
        {
            StoryBusinessLayer storyBusinessLayerObj = new StoryBusinessLayer();
            Story storyObj = storyBusinessLayerObj.Stories.Single(str => str.ID == ID);

            return View(storyObj);
        }

        [HttpPost]
        public ActionResult Edit(Story storyObj)
        {
            if(ModelState.IsValid)
            {
                StoryBusinessLayer storyBusinessLayerObj = new StoryBusinessLayer();
                storyBusinessLayerObj.EditStory(storyObj);

                return RedirectToAction("Index");
            }

            return View(storyObj);
        }

        [HttpGet]
        public ActionResult Delete(int ID)
        {

            StoryBusinessLayer storyBusinessLayerObj = new StoryBusinessLayer();
            storyBusinessLayerObj.DeleteStory(ID);

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult ExportJson(int ID)
        {

            StoryBusinessLayer storyBusinessLayerObj = new StoryBusinessLayer();
            List<Story> storiesObj = storyBusinessLayerObj.Stories.ToList();

            return Json(new { data = storiesObj.Find(id => id.ID == ID) }, JsonRequestBehavior.AllowGet);
        }
    }
}