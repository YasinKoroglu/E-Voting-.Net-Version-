using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using E_Voting.Models;







namespace E_Voting.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult ContactUs()
        {

            return View();
        }
        
        [HttpPost]
        public ActionResult Savecontactus(RespectewLetter model)
        {

            try
            {
                AccountdbEntities db = new AccountdbEntities();

                RespectewLetter rgs = new RespectewLetter();
                rgs.fullname = model.fullname;
                rgs.givenemail = model.givenemail;
                rgs.yourletter = model.yourletter;
                

                db.RespectewLetters.Add(rgs);

            
                
            
                db.SaveChanges();
          


            int latestElcId = rgs.Id;
            }
            catch (Exception ex)
            {
                throw ex;
            }



            return RedirectToAction("home");
        }

        public ActionResult Login()
        {

            return View();
        }

        [HttpPost]
        public JsonResult LoginUser(User model)
        {
            AccountdbEntities db = new AccountdbEntities();
            User user = db.Users.SingleOrDefault(x => x.email == model.email && x.password1 == model.password1);
            if (user != null)
            {
                Session["UserId"] = user.Id;
                Session["Username"] = user.firstname;

            }


            return Json("", JsonRequestBehavior.AllowGet);
        }

        public ActionResult logout()
        {
            Session.Clear();
            Session.Abandon();
            return RedirectToAction("Login");
        }

        public ActionResult register()
        {
            return View();
        }

        [HttpPost]
        public JsonResult Saveuser(User model)
        {

            try
            {
                AccountdbEntities db = new AccountdbEntities();

                User usr = new User();
                usr.firstname = model.firstname;
                usr.lastname = model.lastname;
                usr.email = model.email;
                usr.socialsecuritynumber = model.socialsecuritynumber;
                usr.password1 = model.password1;
                usr.password2 = model.password2;

                db.Users.Add(usr);

                db.SaveChanges();

                int latestUsrId = usr.Id;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            


               return Json("Success", JsonRequestBehavior.AllowGet);
        }

        public ActionResult forgotpassword()
        {
            return View();
        }

        public ActionResult home()
        {
            return View();
        }

        public ActionResult createcampaign()
        {

           // AccountdbEntities db = new AccountdbEntities();
            //List<Election> list = db.Elections.ToList();
            //ViewBag.ElectionList = new SelectList(list, "Campaign_Name", "Participant_Name1", "Participant_Name2");
            return View();

        }

        public ActionResult Savecampaign(Election model)
        {

            try
            {
                AccountdbEntities db = new AccountdbEntities();

                Election elb = new Election();
                elb.CampaignName = model.CampaignName;
                elb.ParticipantName1 = model.ParticipantName1;
                elb.ParticipantName2 = model.ParticipantName2;
                elb.Content1 = model.Content1;

                db.Elections.Add(elb);
                
                db.SaveChanges();

                int latestCampaignId = elb.Id;
            }
            catch (Exception ex)
            {
                throw ex;
            }



            return RedirectToAction("profile");
        }






















        public ActionResult setting()
        {
            return View();
        }

        
        public ActionResult profile()
        {
            return View();
        }

        public ActionResult campaigns()
        {
             AccountdbEntities db = new AccountdbEntities();
            var data = db.Elections.ToList();
            ViewBag.userdetails = data;

            return View();
        }

        public ActionResult Savevote(Vote model)
        {
            try
            {
                AccountdbEntities db = new AccountdbEntities();

                Vote elb = new Vote();
                elb.CampaignName = model.CampaignName;
                elb.WhichParticipant = model.WhichParticipant;
                elb.Whovotedname = model.Whovotedname;
                elb.Whovotedemail = model.Whovotedemail;
               //Session["Username"] = model.Whovotedname;
               // Session["UserId"] = model.Whovotedemail;

                db.Votes.Add(elb);


                db.SaveChanges();

                int latestVoteId = elb.Id;
            }
            catch (Exception ex)
            {
                throw ex;
            }



            return RedirectToAction("profile");
        }



        public JsonResult GetCampaignRecord()
        {
            AccountdbEntities db = new AccountdbEntities();
            List<Election> List = db.Elections.Select(x => new Election 
            { 
                CampaignName = x.CampaignName,
                Content1 = x.Content1,
                ParticipantName1 = x.ParticipantName1,
                ParticipantName2 = x.ParticipantName2 
            }).ToList();
            
            return Json(List, JsonRequestBehavior.AllowGet);
        }
       

        public ActionResult myCampaigns()
        {
            return View();
        }
    }
}