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
    }
}