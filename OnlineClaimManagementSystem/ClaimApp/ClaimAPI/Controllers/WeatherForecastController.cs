using ClaimAPI.Utility;
using Microsoft.AspNetCore.Mvc;

namespace ClaimAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

        private readonly ILogger<WeatherForecastController> _logger;

        public WeatherForecastController(ILogger<WeatherForecastController> logger)
        {
            _logger = logger;
        }

        [HttpGet(Name = "GetWeatherForecast")]
        public IActionResult Get()
        {
            var customers=new List<Customer>() { 
            new Customer(){Id = 1,Name="Akash"},
            new Customer(){Id = 2,Name="Vikash"}
            };
            var result=XMLUtil.GenerateXML(customers);
            return Ok(result);
        }
        public class Customer
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }
    }
}