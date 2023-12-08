using ClaimAPI.Models;
using ClaimAPI.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections;

namespace ClaimAPI.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class ClaimController : ControllerBase
    {
        public IClaimService claimService { get; }
        private APIResponse response = new APIResponse();

        public Microsoft.AspNetCore.Hosting.IHostingEnvironment Environment { get; }

        public ClaimController(Microsoft.AspNetCore.Hosting.IHostingEnvironment environment, IClaimService _claimService)
        {
            Environment = environment;
            claimService = _claimService;
        }


        [Route("RequestClaim")]
        [HttpPost]
       
        public IActionResult RequestClaim()
        {
            try
            {
                var evidence = Request.Form.Files[0];
                EmployeeClaim claim = new EmployeeClaim();
                claim.ClaimTitle = Request.Form["ClaimTitle"].ToString();
                claim.ClaimReason = Request.Form["ClaimReason"].ToString();
                claim.ClaimDescription = Request.Form["ClaimDescription"].ToString();
                claim.ClaimAmount = Request.Form["ClaimAmount"].ToString();
                claim.ExpenseDt = Request.Form["ExpenseDt"].ToString();
                claim.UserId = Convert.ToInt32(Request.Form["UserId"]);
                claim.Evidence = UploadEvidence(evidence);
                string result = claimService.RaiseClaimRequest(claim);
                if (string.IsNullOrEmpty(result))
                {
                    response.status = 200;
                    response.ok = true;
                    response.data = null;
                    response.message = "Claim requested successfully!";
                }
                else
                {
                    response.status = -100;
                    response.ok = false;
                    response.data = null;
                    response.message = result;

                }
            }
            catch (Exception ex)
            {
                response.status = -100;
                response.ok = false;
                response.data = null;
                response.message = ex.Message;
            }
            return Ok(response);
        }
        private string UploadEvidence(IFormFile file)
        {
            var rootpath = Environment.ContentRootPath;
            var ext = System.IO.Path.GetExtension(file.FileName);
            string filename="Evidence_"+Guid.NewGuid().ToString()+ ext;
            var fullPath = Path.Combine(rootpath, "EvidenceFiles", filename);         
            FileStream stream = new FileStream(fullPath, FileMode.Create);
            file.CopyTo(stream);
            return "EvidenceFiles/"+filename;
        }

        [Route("GetAllPendingClaim")]
        [HttpGet]
        public IActionResult GetAllPendingClaim(string Role,int UserId)
        {
            try
            {
                
                var result = claimService.GetAllPendingRequest(UserId,Role);
                if (string.IsNullOrEmpty(result.Item1))
                {
                    response.status = 200;
                    response.ok = true;
                    response.data = result.Item2;
                    response.message = "Record found!";
                }
                else
                {
                    response.status = -100;
                    response.ok = false;
                    response.data = null;
                    response.message = result.Item1;

                }
            }
            catch (Exception ex)
            {
                response.status = -100;
                response.ok = false;
                response.data = null;
                response.message = ex.Message;
            }
            return Ok(response);
        }


        [Route("ActionClaim")]
        [HttpPost]

        public IActionResult ActionClaim(ClaimAction claim)
        {
            try
            {
                
                string result = claimService.ClaimAction(claim);
                if (string.IsNullOrEmpty(result))
                {
                    response.status = 200;
                    response.ok = true;
                    response.data = null;
                    response.message = "Claim action updated successfully!";
                }
                else
                {
                    response.status = -100;
                    response.ok = false;
                    response.data = null;
                    response.message = result;

                }
            }
            catch (Exception ex)
            {
                response.status = -100;
                response.ok = false;
                response.data = null;
                response.message = ex.Message;
            }
            return Ok(response);
        }

        [Route("ClaimActionHisotry")]
        [HttpGet]
        public IActionResult GetClaimActionHisotry(int claimid)
        {
            try
            {

                var result = claimService.GetClaimActionHisotry(claimid);
                if (string.IsNullOrEmpty(result.Item1))
                {
                    response.status = 200;
                    response.ok = true;
                    response.data = result.Item2;
                    response.message = "Record found!";
                }
                else
                {
                    response.status = -100;
                    response.ok = false;
                    response.data = null;
                    response.message = result.Item1;

                }
            }
            catch (Exception ex)
            {
                response.status = -100;
                response.ok = false;
                response.data = null;
                response.message = ex.Message;
            }
            return Ok(response);
        }


        [Route("EmployeeClaimTransactions")]
        [HttpGet]
        public IActionResult GetEmployeeClaimTransactions(int UserId)
        {
            try
            {

                var result = claimService.GetEmployeeClaimTransactions(UserId);
                if (result.Count>0)
                {
                    response.status = 200;
                    response.ok = true;
                    response.data = result;
                    response.message = "Record found!";
                }
                else
                {
                    response.status = -100;
                    response.ok = false;
                    response.data = null;
                    response.message = "Record not found!";

                }
            }
            catch (Exception ex)
            {
                response.status = -100;
                response.ok = false;
                response.data = null;
                response.message = ex.Message;
            }
            return Ok(response);
        }

        [Route("Download")]
        [HttpPost]

        public IActionResult Download()
        {
            try
            {
                string path = Request.Form["path"].ToString();
               // string path = "EvidenceFiles/Evidence_0791f573-823e-4a4a-95e9-d36a37f3676c.txt";

                if (System.IO.File.Exists(path))
                {
                    //FileStream stream=new FileStream(path, FileMode.OpenOrCreate);
                    ////BinaryReader br=new BinaryReader(stream);
                    //var result= stream.Read((int)stream.Length);
                    //stream.Close();
                    //stream.Dispose();

                    byte[] bytes = System.IO.File.ReadAllBytes(path);
                    
                    response.status = 200;
                    response.ok = true;
                    response.data = bytes;
                    response.message = "file read successfully!";
                }
               
                else
                {
                    response.status = -100;
                    response.ok = false;
                    response.data = null;
                    response.message = "File not exist!";

                }
            }
            catch (Exception ex)
            {
                response.status = -100;
                response.ok = false;
                response.data = null;
                response.message = ex.Message;
            }
            return Ok(response);
        }
    }
}
