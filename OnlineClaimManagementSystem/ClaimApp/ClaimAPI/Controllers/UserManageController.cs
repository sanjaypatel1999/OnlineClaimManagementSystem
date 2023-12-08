using Azure;
using ClaimAPI.Models;
using ClaimAPI.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ClaimAPI.Controllers
{
   [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class UserManageController : ControllerBase
    {
        public ICRUD<UserVm> UserService { get; }
        public IEntity entity { get; set; }
        private APIResponse response = new APIResponse();

        public UserManageController(ICRUD<UserVm> _Crud,IEntity _entity)
        {
            UserService = _Crud;
            entity = _entity;
        }

        [HttpGet]
        [Route("GetAllUsers")]
        public IActionResult GetAllUser(int id)
        {
            try
            {

                var result = UserService.GetData(id);
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

        [HttpGet]
        [Route("GetUserById")]
        public IActionResult GetUserById(int id)
        {
            try
            {

                var result = UserService.GetSingleData(id);
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

        [HttpPost]
        [Route("CreateUser")]
        public IActionResult CreateUser()
        {
            try
            {
                UserVm vm = new UserVm();
                vm.UserName = Request.Form["UserName"].ToString();
                vm.Email = Request.Form["Email"].ToString();
                vm.Mobile = Request.Form["Mobile"].ToString();
                vm.ManagerId = Request.Form["ManagerId"].ToString();
                vm.Status = Request.Form["Status"].ToString();
                vm.Password = Request.Form["Password"].ToString();

                var result = UserService.AddData(vm);
                if (string.IsNullOrEmpty(result))
                {
                    response.status = 200;
                    response.ok = true;
                    response.data = vm;
                    response.message = "Data saved successfully!";
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

        [HttpPost]
        [Route("UpdateUser")]
        public IActionResult UpdateUser()
        {
            try
            {
                UserVm vm = new UserVm();
                vm.UserName = Request.Form["UserName"].ToString();
                vm.Email = Request.Form["Email"].ToString();
                vm.Mobile = Request.Form["Mobile"].ToString();
                vm.ManagerId = Request.Form["ManagerId"].ToString();
                vm.Status = Request.Form["Status"].ToString();
                vm.Id = Request.Form["Id"].ToString();

                var result = UserService.UpdateData(vm);
                if (string.IsNullOrEmpty(result))
                {
                    response.status = 200;
                    response.ok = true;
                    response.data = vm;
                    response.message = "Data saved successfully!";
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


        [HttpGet]
        [Route("GetUserByRole")]
        public IActionResult GetUserByRole(int RoleId)
        {
            try
            {

                var result = entity.GetEntity(RoleId);
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

        [HttpGet]
        [Route("GetUsers")]
        public IActionResult GetUser()
        {
            try
            {

                var result = entity.GetUser();
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
    }
}
