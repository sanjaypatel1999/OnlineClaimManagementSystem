using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Net.Http;
using System.Security.Cryptography;
using System.Xml.Linq;

namespace ClaimApp.Controllers
{
    public class ClaimController : Controller
    {
        public IActionResult AddClaim()
        {
            return View();
        }
        public IActionResult ShowClaim(string Role)
        {
            ViewBag.Role = Role;
            return View();
        }

		public IActionResult Claimtransaction()
		{
			
			return View();
		}


		public async Task< IActionResult> Download(string path)
        {
            using (var client = new HttpClient())
            {
                try
                {
					var formContent = new FormUrlEncodedContent(new[]
					{
	                new KeyValuePair<string, string>("path", path),
                     });

					var response = await client.PostAsync("https://localhost:44397/api/Claim/Download",formContent);
                    var result = await response.Content.ReadAsStringAsync();
                    var result2 = JsonConvert.DeserializeObject<APIResponse>(result);
                    byte[] report = Convert.FromBase64String(result2.data.ToString());
                   return File(report, "application/octet-stream", "Evidence_" + DateTime.Now.ToString().Replace("-", "_") +"."+path.Split(".")[1]);
                   
                }
                catch (Exception ex)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine(ex.Message);
                    Console.ResetColor();
                }
            }
            return null;
        }

       public class APIResponse
        {
            public bool ok { get; set; }
            public int status { get; set; }
            public string message { get; set; }
            public string token { get; set; }
            public object data { get; set; }
        }
    }
}
