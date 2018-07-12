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
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(FormCollection formCollectionObj)
        {
            if (ModelState.IsValid)
            {
                Story storyObj = new Story();
                storyObj.Title = formCollectionObj["Title"];
                storyObj.Body = formCollectionObj["Body"];
                storyObj.DatePosted = formCollectionObj["DatePosted"];
                StoryBusinessLayer storyBusinessLayerObj = new StoryBusinessLayer();
                storyBusinessLayerObj.AddStory(storyObj);
            }
            return RedirectToAction("Index");
        }
    }
}