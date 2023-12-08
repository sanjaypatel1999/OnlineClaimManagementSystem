using Microsoft.AspNetCore.Mvc;

namespace ClaimApp.Controllers
{
    public class UserController : Controller
    {
        public IActionResult ManageUser()
        {
            return View();
        }
    }
}
