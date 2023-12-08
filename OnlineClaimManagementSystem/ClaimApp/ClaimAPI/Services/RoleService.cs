using ClaimAPI.Data;
using ClaimAPI.Models;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
using System.Reflection.Metadata;

namespace ClaimAPI.Services
{

    public interface IRole
    {
        Tuple<string, List<Role>> GetData();
        Tuple<string, Role> GetSingleRole(int RoleId);
        string AddRole(Role role);
        string UpdateRole(Role role);

        string AssignRole(int RoleId,int UserId, int Status);
        Tuple<string, List<Entity>> GetRoles();
        Tuple<string, List<UserRights>> GetProgramRights(int userid);
        string SaveProgramRights(int userid, string programsxml);
    }
    public class RoleService:IRole
    {
        public ApplicationDbContext DbContext { get; }
        public RoleService(ApplicationDbContext dbContext)
        {
            DbContext = dbContext;
        }


        public string AddRole(Role role)
        {
            string message = string.Empty;
            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "usp_role_master";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Action";
                    parameter.SqlValue = "create";
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@RoleName";
                    parameter.SqlValue = role.RoleName;
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Status";
                    parameter.SqlValue = role.Status;
                    parameter.SqlDbType = SqlDbType.TinyInt;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteScalar();

                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return message;

        }

        public Tuple<string, List<Role>> GetData()
        {

            string message = string.Empty;
            List<Role> lstRole = new List<Role>();

            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "usp_role_master";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Action";
                    parameter.SqlValue = "getall";
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteReader();
                    while (result.Read())
                    {
                        Role objRole = new Role();
                        objRole.Id = result["id"].ToString();
                        objRole.RoleName = result["role"].ToString();
                        objRole.Status = Convert.ToInt32(result["status"]);
                        lstRole.Add(objRole);
                    }
                    DbContext.Database.CloseConnection();
                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return new Tuple<string, List<Role>>(message, lstRole);

        }


        public Tuple<string, Role> GetSingleRole(int id)
        {

            string message = string.Empty;
            Role objRole = new Role();

            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "usp_role_master";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Action";
                    parameter.SqlValue = "get";
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@id";
                    parameter.SqlValue = id;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);


                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteReader();
                    while (result.Read())
                    {

                       
                        objRole.Id = result["id"].ToString();
                        objRole.RoleName = result["role"].ToString();
                        objRole.Status = Convert.ToInt32(result["status"]);

                    }
                    DbContext.Database.CloseConnection();
                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return new Tuple<string, Role>(message, objRole);

        }


        public string UpdateRole(Role role)
        {
            string message = string.Empty;
            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "usp_role_master";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Action";
                    parameter.SqlValue = "update";
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@id";
                    parameter.SqlValue = role.Id;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);
                    
                    parameter = new SqlParameter();
                    parameter.ParameterName = "@RoleName";
                    parameter.SqlValue = role.RoleName;
                    parameter.SqlDbType = SqlDbType.VarChar;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Status";
                    parameter.SqlValue = role.Status;
                    parameter.SqlDbType = SqlDbType.TinyInt;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteScalar();

                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return message;

        }

        public string AssignRole(int RoleId, int UserId, int Status)
        {
            string message = string.Empty;
            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "usp_assign_role";
                    command.CommandType = CommandType.StoredProcedure;

                    var parameter = new SqlParameter();


                    parameter = new SqlParameter();
                    parameter.ParameterName = "@roleId";
                    parameter.SqlValue = RoleId;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@UserId";
                    parameter.SqlValue =UserId;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    parameter = new SqlParameter();
                    parameter.ParameterName = "@Status";
                    parameter.SqlValue = Status;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);

                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteScalar();

                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return message;

        }

        public Tuple<string, List<Entity>> GetRoles()
        {
            string message = string.Empty;
            List<Entity> lstRole = new List<Entity>();

            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "USP_GET_ROLES";
                    command.CommandType = CommandType.StoredProcedure;

                   

                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteReader();
                    while (result.Read())
                    {
                        Entity objRole = new Entity();
                        objRole.Id = Convert.ToInt32(result["Id"]);
                        objRole.Name = result["Role"].ToString();
                        lstRole.Add(objRole);
                    }
                    DbContext.Database.CloseConnection();
                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return new Tuple<string, List<Entity>>(message, lstRole);
        }

        public Tuple<string, List<UserRights>> GetProgramRights(int userid)
        {
            string message = string.Empty;
            List<UserRights> lstRights = new List<UserRights>();

            try
            {
                using (var command = DbContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "usp_get_programs_rights";
                    command.CommandType = CommandType.StoredProcedure;
                    var parameter = new SqlParameter();
                    parameter = new SqlParameter();
                    parameter.ParameterName = "@userId";
                    parameter.SqlValue = userid;
                    parameter.SqlDbType = SqlDbType.Int;
                    parameter.Direction = ParameterDirection.Input;
                    command.Parameters.Add(parameter);



                    DbContext.Database.OpenConnection();
                    var result = command.ExecuteReader();
                    while (result.Read())
                    {
                        UserRights objRights = new UserRights();
                        objRights.Id = Convert.ToInt32(result["id"]);
                        objRights.Title = result["P_title"].ToString();
                        objRights.Descr = result["Descr"].ToString();
                        objRights.Ischecked = result["ischecked"].ToString();
                        lstRights.Add(objRights);
                    }
                    DbContext.Database.CloseConnection();
                }
            }
            catch (SqlException ex)
            {
                message = ex.Message;
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            return new Tuple<string, List<UserRights>>(message, lstRights);
        }

		public string SaveProgramRights(int userid, string programsxml)
		{
			string message = string.Empty;
			try
			{
				using (var command = DbContext.Database.GetDbConnection().CreateCommand())
				{
					command.CommandText = "USP_SAVE_USER_INDIVIDUAL_RIGHTS";
					command.CommandType = CommandType.StoredProcedure;

					var parameter = new SqlParameter();


					parameter = new SqlParameter();
					parameter.ParameterName = "@UserId";
					parameter.SqlValue =userid;
					parameter.SqlDbType = SqlDbType.Int;
					parameter.Direction = ParameterDirection.Input;
					command.Parameters.Add(parameter);

					parameter = new SqlParameter();
					parameter.ParameterName = "@Rights";
					parameter.SqlValue = programsxml;
					parameter.SqlDbType = SqlDbType.Xml;
					parameter.Direction = ParameterDirection.Input;
					command.Parameters.Add(parameter);


					DbContext.Database.OpenConnection();
					var result = command.ExecuteScalar();

				}
			}
			catch (SqlException ex)
			{
				message = ex.Message;
			}
			catch (Exception ex)
			{
				message = ex.Message;
			}
			return message;
		}
	}
}
