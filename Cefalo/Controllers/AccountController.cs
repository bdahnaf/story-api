﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BusinessLayer;

namespace Cefalo.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        [HttpGet]
        [ActionName("Index")]
        public ActionResult Index_Get()
        {
            return View();
        }

        [HttpPost]
        [ActionName("Index")]
        public ActionResult Index_Post()
        {
            User usersObj = new User();
            TryUpdateModel(usersObj);

            //if (ModelState.IsValid)
            //{
                UserBusinessLayer userBusinessLayerObj = new UserBusinessLayer();
                bool check = userBusinessLayerObj.isUser(usersObj);
                if(check == true)
                {
                    Session["username"] = usersObj.username;
                    return Redirect("/Home/Index");
                }
                else
                {
                    return View();
                }
            //}
            return View();
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
            User usersObj = new User();
            TryUpdateModel(usersObj);

            if (ModelState.IsValid)
            {
                UserBusinessLayer userBusinessLayerObj = new UserBusinessLayer();
                userBusinessLayerObj.AddUser(usersObj);
                Session["username"] = usersObj.username;
                return Redirect("/Home/Index");
            }
            return View();
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return Redirect("/Home/Index");
        }
    }
}