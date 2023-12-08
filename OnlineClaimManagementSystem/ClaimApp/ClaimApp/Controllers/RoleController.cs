using Microsoft.AspNetCore.Mvc;

namespace ClaimApp.Controllers
{
    public class RoleController : Controller
    {
        public IActionResult ManageRole()
        {
            return View();
        }
        public IActionResult AssignRole()
        {
            return View();
        }
        public IActionResult AssignRights()
        {
            return View();
        }
    }
}
